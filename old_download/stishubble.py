##################################################
# Title:    stishubble.py                        #
# Author:   Romert M Thompson                    #
# Date:     Oct 19 2021                          #
# Function: Hubble STIS Instrument Data Pipeline #
##################################################

from pyklip.instruments.Instrument import Data
import numpy as np
import astropy.io.fits as fits
from astropy import wcs
import math
import radonCenter
import scipy
import os
from astropy.nddata import Cutout2D
import copy
import pyklip.instruments.utils.wcsgen as wcsgen
import warnings
from scipy.optimize import OptimizeWarning
import statistics
from astropy import stats
from pyklip.klip import rotate as pyklipRotate
import psutil
cpuCount   = psutil.cpu_count(logical = False)
print("cpuCount : ", cpuCount)
from multiprocessing import Pool
#https://www.stsci.edu/hst/instrumentation/stis/observing-strategies/available-modes/stis-bar5
#"The wedges vary in width from 0.5 to 3.0 arcseconds over their 50 arcseconds length"
#SLOPE     = 0 # In case you need a vertical rectangle over the wedge
#SLOPE     = 0.025 # (1/40)
SLOPE      = (((3.0 - 0.5)/2)/50) # Equals 0.025 Equals 1/40
PLATESCALE = 0.05



def parallelfunction (    
        parallelTimerIndex ,
        parallelT,
        maskFR        
    ) :
    #print("parallelTimerIndex : ", parallelTimerIndex)
    SCIdataFR = parallelT [  0 ]
    ERRdataFR = parallelT [  1 ]
    DQ_dataFR = parallelT [  2 ]
    rtfn      = parallelT [  3 ] 
    ii        = parallelT [  4 ]
    wcspa     = parallelT [  5 ]
    rCRPIX2F  = parallelT [  6 ]
    cCRPIX1F  = parallelT [  7 ]
    radcB     = parallelT [  8 ]    
    NAXIS2    = parallelT [  9 ]
    EXPTIME   = parallelT [ 10 ]
    usePos    = parallelT [ 11 ]
    maskB     = parallelT [ 12 ]
    maskL     = parallelT [ 13 ]
    pyklipB   = parallelT [ 14 ]
    nmfB      = parallelT [ 15 ]
    CCDGAIN   = parallelT [ 16 ]
    cCRPIX1I  = int(cCRPIX1F) # column stis intrument stellar point Integer
    rCRPIX2I  = int(rCRPIX2F) #    row stis intrument stellar point Integer
    stisPos   = (cCRPIX1F, rCRPIX2F)
    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 2 / 14
    "We applied a 3 x 3 pixel median filter
        for pixels having DQ flag values of 16, 256, 8192"
    """
    # Apply 3x3 median filter, per Bin Ren
    # This overwrites both the SCI and ERR pixel for bad DQ 
    if 1 : 
        for (rjy,cix), DQpixel in np.ndenumerate(DQ_dataFR):
            if(DQpixel == (16 or 256 or 8192)):
                SCIdataFR[rjy][cix], ERRdataFR[rjy][cix] = a3b3mf (
                    SCIdataFR ,
                    ERRdataFR ,
                    DQ_dataFR  ,
                    rjy      ,
                    cix
                )
                

    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 3 / 14
    "we applied an empirical r^(1/2) correction map"
    """
    # Apply empirical correction map, per Bin Ren
    # This applies only to SCI, which is used for centering
    if 1 :
        plce = 0.5 # power law correction exponent
        for (rjy,cix), DQpixel in np.ndenumerate(SCIdataFR):
            vdist  = rjy - rCRPIX2I
            hdist  = cix - cCRPIX1I
            radius = math.sqrt ( pow ( vdist, 2 ) + pow ( hdist, 2 ) )
            SCIdataFR[rjy][cix] = SCIdataFR[rjy][cix] * pow ( radius, plce )

    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 3 / 14
    "We aligned the centers of the stars using Radon Transform-based
    center determination method described in Ref. 54 after the above-mentioned
    median filtering. We took the SCI extension data, start center searching from
    the instrumental center given by its CRPIX1 and CRPIX2 header values; to make
    use of the 45 degree and 135 degree major diffraction spikes (Fig. 3) for the
    alignment of the STIS images"
    """
    # Get radonCenter's determination of the stellar point
    radcPos = (0.0,0.0)
    if radcB : # radonCenter Boolean
        radcPos = radonCenter.searchCenter ( 
            SCIdataFR         ,
            cCRPIX1I             , # x ; column stellar point Integer
            rCRPIX2I             , # y ; row    stellar point Integer
            size_window = math.floor ( NAXIS2 / 2 ),
            size_cost   = 7  ,
            theta       = [45, 135]#, 225, 315]
        )                    
        #print("radcPos        : (", rtfn, ii, ")", f2f2(radcPos))
        usePos = radcPos

    # TODO: Remove blown out / saturated frames PRIOR to Normalize
    # It is still possible for there to be frames with median EXPTIME
    # that unexpectedly have non-trivial saturated regions. 
    # Identifying them will require a crawler function for saturated pixels


    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 4 / 14
    "The aligned stellar images are then divided by their exposure times 
    (obtained from the EXPTIME header) to have units of counts s^-1,"
    """
    # Normalize frame
    SCIdataFR = SCIdataFR / EXPTIME
    ERRdataFR = ERRdataFR / EXPTIME
    
    # Get the amount of shift required to center the subarray onto the star 
    voff = SCIdataFR.shape[0]/2 - usePos[1] # vertical offset 
    hoff = SCIdataFR.shape[1]/2 - usePos[0] # horizontal offset
    
    shiftedSCIdataFR = scipy.ndimage.shift ( SCIdataFR, np.array ( [ voff, hoff ] ) )
    shiftedERRdataFR = scipy.ndimage.shift ( ERRdataFR, np.array ( [ voff, hoff ] ) )
    if 0:
        import matplotlib.pyplot as plt
        plt.figure      ( figsize=[5,5] )
        plt.imshow      ( shiftedSCIdataFRdataFR )
        plt.xlim        ( [ 0, shiftedSCIdataFR.shape[1]] )
        plt.ylim        ( [ 0, shiftedSCIdataFR.shape[0]] )                
    
    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 4 / 14                
    "cut into sizes of ... 213 x 213 pixel for the A1.0 exposures"
    """
    lh = 110 # legacy height from Ewan Douglas 110-high observations
    lw = 213 # legacy width from Bin Ren NMF reductions with rotation, and Pyklip
    
    hypotenuse = math.floor ( math.sqrt ( pow ( lh, 2 ) + pow ( lw, 2 ) ) ) 
    
    SCIC2D = Cutout2D (
        shiftedSCIdataFR ,
        position = ( shiftedSCIdataFR.shape[1]/2 , shiftedSCIdataFR.shape[0]/2 ),
        size     = (lh,lw) ,
        wcs      = None # TODO add wcs to this
    )
    
    if 0:
        import matplotlib.pyplot as plt
        plt.figure      ( figsize=[5,5] )
        plt.imshow      ( SCIC2D.data )
        plt.xlim        ( [ 0, SCIC2D.shape[1]] )
        plt.ylim        ( [ 0, SCIC2D.shape[0]] )
        
    ERRC2D = Cutout2D (
        shiftedERRdataFR ,
        position = ( shiftedERRdataFR.shape[1]/2 , shiftedERRdataFR.shape[0]/2 ),
        size     = (lh,lw) ,
        wcs      = None # TODO add wcs to this
    )
    #print("ERRC2D.shape     : (", rtfn, ii, ")", ERRC2D.shape)
      
    # Apply maskFR if (the mask boolean says to) AND (this is not for NMF)
    if pyklipB and maskB and not nmfB :
        SCIC2D.data [ maskFR == 0 ] = np.nan
        ERRC2D.data [ maskFR == 0 ] = np.nan
        if 0 :
            import matplotlib.pyplot as plt
            plt.rcParams.update({'figure.max_open_warning': 0})
            plt.figure      ( figsize=[20,20] )
            plt.imshow      ( SCIC2D.data )
            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
            plt.title       ( rtfn + ", " + str ( ii ) + ", " + str ( (ii+2)/3 ) )

    # Convert saturated pixels to np.nan, based on gain
    # NMF cannot digest nans
    if 0 : 
        if CCDGAIN == 4 :
            #pixel threshold for nan = 130000 / 4 = 32500
            if pyklipB :
                SCIC2D.data [ SCIC2D.data > 32500 ] = np.nan
            if nmfB :
                SCIC2D.data [ SCIC2D.data > 32500 ] = 32500 # not ideal
        if CCDGAIN == 1 :
            #pixel threshold for nan =              33000
            if pyklipB : 
                SCIC2D.data [ SCIC2D.data > 33000 ] = np.nan
            if nmfB : 
                SCIC2D.data [ SCIC2D.data > 33000 ] = 33000 # not ideal

    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 5 / 14                
    "In order to reduce the color-mismatch which creates unrealistic
    halos (e.g., Fig. 8), for each target readout, we normalized itself
    and all the PSF readouts by first applying an algorithmic mask
    to block the physical wedges and the primary di raction spikes,
    then subtracting the mean and dividing the standard deviation of
    each readout" [sic]
    """
    # NOTE THAT: NMF fails if the data is given this operation                
    if pyklipB and not nmfB :
        if 0 :
            import matplotlib.pyplot as plt
            plt.figure      ( figsize=[5,5] )
            plt.imshow      ( SCIC2D.data )
            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
            plt.title       ( " before sub of mean")                
        meanSCIC2Ddata = np.nanmean(SCIC2D.data)
        #print("meanSCIC2Ddata : ", meanSCIC2Ddata)
        meanERRC2Ddata = np.nanmean(ERRC2D.data)
        SCIC2D.data = SCIC2D.data - meanSCIC2Ddata
        if 0 :
            import matplotlib.pyplot as plt
            plt.figure      ( figsize=[5,5] )
            plt.imshow      ( SCIC2D.data )
            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
            plt.title       ( " after sub of mean")
        ERRC2D.data = ERRC2D.data - meanERRC2Ddata
        stddevSCIC2D = np.nanstd(SCIC2D.data)
        #print("stddevSCIC2D : ", stddevSCIC2D)
        stddevERRC2D = np.nanstd(ERRC2D.data)
        SCIC2D.data = SCIC2D.data / stddevSCIC2D
        if 0 :
            import matplotlib.pyplot as plt
            plt.figure      ( figsize=[5,5] )
            plt.imshow      ( SCIC2D.data )
            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
            plt.title       ( " after div by std")                                    
        ERRC2D.data = ERRC2D.data / stddevERRC2D    

    # TODO: Bin Ren's sequence takes care of DQ, but, 
    #    keep an expansion slot for NOT using every process in Bin Ren's recipe
    
    # Create a canvas large enough to allow Cutout2D frame rotation
    # And transfer the Cutout2D frame to it
    # Due to the artifact resulting from ndshift, omit transferring a border of size bb
    # The size of the Cutout2D that will be transferred, sans edge, is 'aperture'
    aFR = int ( hypotenuse / 2 - SCIC2D.shape[0] / 2 ) # aperture fiducial row (*not frame 'FR')
    aFC = int ( hypotenuse / 2 - SCIC2D.shape[1] / 2 ) # aperture fiducial column
    bb  = 1
    aBR = aFR + bb                   # aperture bottom row 
    aTR = aFR - bb + SCIC2D.shape[0] # aperture top    row
    aLC = aFC + bb                   # aperture left   column 
    aRC = aFC - bb + SCIC2D.shape[1] # aperture right  column  

    SCIcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
    if pyklipB and not nmfB : SCIcanvas[:] = np.nan   # Pyklip requires nans  background
    SCIcanvas [ aBR : aTR , aLC : aRC ] = SCIC2D.data [ bb : - bb , bb : - bb ]
    ERRcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
    if pyklipB and not nmfB : ERRcanvas[:] = np.nan   # Pyklip requires nans  background
    ERRcanvas [ aBR : aTR , aLC : aRC ] = ERRC2D.data [ bb : - bb , bb : - bb ]
    if 0 :
        import matplotlib.pyplot as plt     
        plt.figure      ( figsize=[3,3] )
        plt.imshow      ( SCIcanvas.data )
        plt.xlim        ( [ 0, SCIcanvas.shape[1]] )
        plt.ylim        ( [ 0, SCIcanvas.shape[0]] )                
                    
    if 0 :
        center = usePos # TODO: Check if this is moot after ndshift
    center = (int(hypotenuse/2),int(hypotenuse/2))    
 
    returnT = (
        SCIcanvas ,
        ERRcanvas ,
        wcspa     ,
        center    ,
        rtfn      ,
    )
    return returnT
    
def checkfornans (dataRA):
    for FR in range ( len ( dataRA ) ) : 
        for row in range ( len ( dataRA [ FR ] ) ) :
            for col in range ( len ( dataRA [ FR ] [ row ] ) ) :
                if np.isnan ( dataRA [ FR ] [ row ] [col ] ) == True :
                    print("There is a np.nan at row ", row, "column", col)
                    assert False
    
def viewprocessedframes ( DC, filenames, PAs, pyklipB, nmfB ) : # Data Cube (TODO: WCS)

    import warnings    
    warnings.simplefilter('ignore', UserWarning)
    # ^^^ "UserWarning: Warning: 'partition' will ignore the 'mask' of the MaskedArray."
    
    warnings.simplefilter('ignore', RuntimeWarning)
    # ^^^ "RuntimeWarning: All-NaN slice encountered"
    # ^^^ "RuntimeWarning: Degrees of freedom <= 0 for slice."
        
    print("DC.shape       : ", DC.shape)
    print("len(filenames) : ", len(filenames)) # Remember that filenames is holding ref filenames...
    print("len(PAs)       : ", len(PAs))
    DCii   = 0  # Data Cube Index
    FN     = filenames [ DCii ] 
    lastFN = FN
    IHDUii = 1  # (STIS) ImageHDU Index
    TLbo     = [] # Tuple List By (STIS) Order, a list of Tuples; Tuples of frame, index, etc...
    for suusaFR in DC : # STIS-Up Un-Sigma-Clipped Frame
        #print("DCii           : ", DCii)
            #GOTITprint("suusaFR.shape  : ", suusaFR.shape)
        FN = filenames [ DCii ]
        if lastFN != FN : IHDUii = 1
        PA = PAs [ DCii ] # PAs were generated from WCS
        susaFR = stats.sigma_clip ( suusaFR, sigma = 2, maxiters = 5 ) # STIS-Up Sigma-Clipped Frame
            #GOTITprint("susaFR.shape   : ", susaFR.shape)
        frmmsT = stats.sigma_clipped_stats ( susaFR , sigma = 2, maxiters = 5 ) # Frame Mean Median Stddev Tuple
        #print("frmmsT         : ", frmmsT)
                                                                #        susaFRRA = np.array ( susaFR )
        rotationcenter = ( susaFR.shape[1] / 2, susaFR.shape[0] / 2 )
        nusaFR = pyklipRotate ( susaFR, PA, rotationcenter ) # North-Up Sigma-Clipped Frame

        TLbo.append (
            (
                DCii,
                nusaFR,
                susaFR,
                FN,
                IHDUii,
                frmmsT[2],
                PA,
            )     
        )
        DCii   = DCii + 1
        IHDUii = IHDUii + 3
        lastFN = FN
  
    nuFRRAbo = np.array ( [ col[1] for col in TLbo ] ) # FRRA is equivalent to a DC
    print("nuFRRAbo.shape : ", nuFRRAbo.shape)
    #print("nuFRRAbo       : {\n", nuFRRAbo, "}")
    HDU      = fits.PrimaryHDU ( nuFRRAbo )
    HDUL     = fits.HDUList ( [ HDU ] )
    if pyklipB and not nmfB :
        oFN  = "pyk_nuAllResidFRbo.fits" # North-Up All Residual Frames By Order
    if nmfB and not pyklipB :
        oFN  = "nmf_nuAllResidFRbo.fits"
    HDUL.writeto ( oFN, overwrite = True )
    
    from operator import itemgetter 
    TLbs     = sorted ( TLbo, key = itemgetter ( 5 ) ) # Tuple List by Stddev ( # frmmsT )
    nuFRRAbs = np.array ( [ col[1] for col in TLbs ] )
    print("nuFRRAbs.shape      : ", nuFRRAbs.shape)
    
    nuNanMedianFR = np.nanmedian ( nuFRRAbs, axis = 0 )
    print("nuNanMedianFR       : ", nuNanMedianFR)
    print("nuNanMedianFR.shape : ", nuNanMedianFR.shape)
    HDU      = fits.PrimaryHDU ( nuNanMedianFR )
    HDUL     = fits.HDUList ( [ HDU ] )
    if pyklipB and not nmfB :
        oFN  = "pyk_nuNanMedianFRbs.fits" # North-Up NanMedian Frame(1) By Stddev; 'butterfly'
    if nmfB and not pyklipB :
        oFN  = "nmf_nuNanMedianFRbs.fits"
    HDUL.writeto ( oFN, overwrite = True )        

    nuNanStddevFR = np.nanstd    ( nuFRRAbs, axis = 0 )
    print("nuNanStddevFR       : ", nuNanStddevFR)
    print("nuNanStddevFR.shape : ", nuNanStddevFR.shape)
    HDU      = fits.PrimaryHDU ( nuNanStddevFR )
    HDUL     = fits.HDUList ( [ HDU ] )
    if pyklipB and not nmfB :
        oFN  = "pyk_nuNanStddevFRbs.fits" # North-Up NanStddev Frame(1) By Stddev; 'butterfly'
    if nmfB and not pyklipB :
        oFN  = "nmf_nuNanStddevFRbs.fits"
    HDUL.writeto ( oFN, overwrite = True )        
     
def viewpreparedframes ( datacube, zoom, sidelength, reticleB = True, datacubeFNs = None ) :
    """
    Displays the frames that have been inputted and processed,
    prior to them being given over to Pyklip or NMF_imaging
    
    Args:
        zoom: the number of pixels to zoom into the center.
        
    Finds the center row and center column of the frames
    Paints vertical and horizontal guides
    Paints diagonal guides
    Paints diagonal cross hairs
    Paints tick marks       
    """
    ii = 0 # index for all frames in class final dataset member
    #if zoom > self._input[0].shape[1] or zoom > self._input[0].shape[0] :
    if zoom > datacube[0].shape[1] or zoom > datacube[0].shape[0] :
        zoom = 0
    #for input_SCI in self._input :
    for input_SCI in datacube :
        H = input_SCI.shape[0]
        W = input_SCI.shape[1]
        if H % 2 == 0 : H = H - 1
        if W % 2 == 0 : W = W - 1
        CH = H / 2 # center H = H / 2 ; Hd2
        CW = W / 2 # center W = W / 2 ; Wd2
        CHF = math.floor ( CH )
        CWF = math.floor ( CW )
        CHC = math.ceil  ( CH )
        CWC = math.ceil  ( CW )
        # "n" = ceNter, "r" = row, "c" = column, "p" = plus, "m" = minus
        CHp  = CHC + 10
        CHm  = CHF - 10
        CWp  = CWC + 10
        CWm  = CWF - 10
        
        if reticleB : 
            # Vertical and horizontal guides
            input_SCI [ CHp               ,       0 : CWm - 5 ] = np.nan # UL _
            input_SCI [ CHm               ,       0 : CWm - 5 ] = np.nan # LL _
            input_SCI [ CHp               , CWp + 6 : W       ] = np.nan # UR _
            input_SCI [ CHm               , CWp + 6 : W       ] = np.nan # LR _

            input_SCI [       0 : CHm - 5 , CWm               ] = np.nan # LL |
            input_SCI [       0 : CHm - 5 , CWp               ] = np.nan # LR |
            input_SCI [ CHp + 6 : H       , CWm               ] = np.nan # UL |
            input_SCI [ CHp + 6 : H       , CWp               ] = np.nan # UR |

            # Diagonal guides
            for R in range ( CHm - 5 ): # R is just Row
                input_SCI [ R         ] [ R + 5     ] = np.nan    # LLB"/"
                input_SCI [ R         ] [ H - R - 6 ] = np.nan  # LRB"\"
            for R in range ( CHp + 5, H, 1 ):
                input_SCI [ R         ] [ H - R + 4 ] = np.nan  # ULT"\"
            for R in range ( CHp + 5 + 1, H, 1):
                input_SCI [ R         ] [ R - 5     ] = np.nan    # URT"/"
            
            for C in range ( CWm - 5 ): # C is just Col
                input_SCI [ C + 5     ] [ C         ] = np.nan    # LLT"/" 
                input_SCI [ W - C - 6 ] [ C         ] = np.nan  # ULB "\" 
            for C in range ( CWp + 5, W, 1 ):
                input_SCI [ W - C + 4 ] [ C         ] = np.nan  # LRT "\"
            for C in range ( CWp + 5 + 1, W, 1 ):
                input_SCI [ C - 5     ] [ C         ] = np.nan    # URB "/" 
            
            # Diagonal cross hairs
            for R in range ( CHm, CHp, 1 ):
                input_SCI [ R ] [ R         ] = np.nan
                input_SCI [ R ] [ H - R - 1 ] = np.nan

            # Tick marks
            for skip05 in range(10,71,5):
                input_SCI [ CHF          ] [ CWF + skip05 ] = np.nan
                input_SCI [ CHF + skip05 ] [ CWF          ] = np.nan
                input_SCI [ CHF          ] [ CWF - skip05 ] = np.nan
                input_SCI [ CHF - skip05 ] [ CWF          ] = np.nan
            for skip10 in range(10,71,10):
                input_SCI [ CHF + 1      ] [ CWF + skip10 ] = np.nan
                input_SCI [ CHF + skip10 ] [ CWF + 1      ] = np.nan
                input_SCI [ CHF + 1      ] [ CWF - skip10 ] = np.nan
                input_SCI [ CHF - skip10 ] [ CWF + 1      ] = np.nan

        if 1: 
            import matplotlib.pyplot as plt                
            plt.figure      ( figsize=[sidelength,sidelength] )
            plt.imshow      ( input_SCI ) # , cmap='gray'
            plt.xlim        ( [ zoom, W - zoom ] ) 
            plt.ylim        ( [ zoom, H - zoom ] )            
            #plt.title       ( "self._input " + self._filenames[ii] + ", " + str(ii) )
            if datacubeFNs :
                plt.title       ( "CD,presently " + datacubeFNs[ii] + ", " + str(ii) )
            else :
                plt.title       ( "CD,presently, " + str(ii) )
        
        ii = ii + 1
        
def createmask (maskL, pyklipB, nmfB, maskshape, voff, hoff, apertureshape = None):
    """
    Creates the maskFR
    This is presently done by default.
    
    Args:
        maskL       : A list of parameters to make the maskFR
                      Presently, the first is width in arcseconds of the wedge
                      Presently, the second is width in arcseconds of the legs
        maskshape   : The shape to make the maskFR
        
    Attributes:
        returns the maskFR frame
     
    """
    
    H = maskshape[0]
    W = maskshape[1]
    mvc = int ( H / 2 ) # mask vertical center
    mhc = int ( W / 2 ) # mask horizontal center
    
    # Reserve "pyklipB and nmfB" option ( reduced capability )
    if pyklipB and not nmfB :
        maskFR        = np.ones(maskshape)
    if (nmfB) and (not pyklipB) and (apertureshape) :
        maskFR        = np.zeros(maskshape)
        avc = int ( apertureshape[0] / 2 ) # aperture Vertical center
        ahc = int ( apertureshape[1] / 2 ) # aperture Horizontal center
        maskFR [ mvc - avc + 1 + 1 : mvc + avc - 1 , mhc - ahc + 1: mhc + ahc - 1 ] = 1
        if 0 :
            import matplotlib.pyplot as plt     
            plt.figure      ( figsize=[30,30] )
            plt.imshow      ( maskFR )
            plt.xlim        ( [ 0, maskFR.shape[1] - 0] )
            plt.ylim        ( [ 0, maskFR.shape[0] - 0] )
            assert False
        
    wedgeWarcsF   = maskL[0] # Float   ; default: 1.0 arcseconds
    legWarcsF     = maskL[1] # Float   ; default: 0.2 arcseconds
    wedgeshiftI   = maskL[2] # Integer ; default: +2 pixels; to the right
    leghorzshiftI = maskL[3] # Integer ; default: +2 pixels; to the right
    legvertshiftI = maskL[4] # Integer ; default: +2 pixels; to the right
    wedgeWpix     = round ( wedgeWarcsF  / PLATESCALE ) # default: 20 pixels
    legWpix       = round ( legWarcsF    / PLATESCALE ) # default: 4 pixels
    halfwedgeWpix = round ( wedgeWpix / 2 )
    mhoff = hoff - 202 - 1
    leghorzshiftI = leghorzshiftI + round ( mhoff )
    legvertshiftI = legvertshiftI + round ( voff  )
    wedgeshiftI   = wedgeshiftI   + round ( mhoff )
    
    # NEVER DELETE DIAG CENTER REGISTER / FIDUCIAL MARKER
    if 0 :
        maskFR[mvc][mhc]=np.nan # fiducial marker
            
    # Wedge A
    if 1 : 
        wedgestartX = mhc + int ( wedgeshiftI )
        wedgestartY = mvc
        wedgeX      = wedgestartX
        wedgeY      = wedgestartY
        if 0 : maskFR[wedgestartY][wedgestartX]=np.nan # wedge fiducial marker
        for row in range ( mvc ) :
            halfwidthtop = int ( halfwedgeWpix + ( ( wedgeY + row ) * SLOPE ) )
            for col in range ( halfwidthtop ) :
                maskFR [ wedgeY + row ] [ wedgeX + col ] = 0
                maskFR [ wedgeY + row ] [ wedgeX - col ] = 0
            
        for row in range ( mvc ) :        
            halfwidthbottom = int ( halfwedgeWpix + ( ( wedgeY - row ) * SLOPE ) )
            for col in range ( halfwidthbottom ) :
                maskFR [ wedgeY - row ] [ wedgeX + col ] = 0
                maskFR [ wedgeY - row ] [ wedgeX - col ] = 0
        if 0 : maskFR[wedgestartY][wedgestartX]=np.nan # wedge fiducial marker
    
    # Spider legs / Diffraction spikes
    if 1 : 
        S                = int ( leghorzshiftI )
        legstartX        = mhc   
        legstartY        = mvc
        legX             = legstartX
        legY             = legstartY
        lvs              = legvertshiftI
        if 0 : maskFR[legstartY][legstartX+S]=np.nan # legs fiducial marker
        for row in range ( mvc + abs ( lvs ) ) :
            legY = legY + 1
            legX = legX + 1
            for col in range ( legWpix ) :
                if W - 1 - legX + S - col + int(legWpix/2) < 239 and legY + lvs < H :
                    maskFR [   legY-1 + lvs ] [ W - 1 - legX + S - col + int(legWpix/2)] = 0 # UL
                if         legX + S + col - int(legWpix/2) < 239 and legY + lvs < H : 
                    maskFR [   legY-1 + lvs ] [         legX + S + col - int(legWpix/2)] = 0 # UR
                if         legX + S + col - int(legWpix/2) < 239 and - legY + lvs > - H - 1 :
                    maskFR [ - legY+1 + lvs ] [         legX + S + col - int(legWpix/2)] = 0 # LR
                if W - 1 - legX + S - col + int(legWpix/2) < 239 and - legY + lvs > - H - 1 :
                    maskFR [ - legY+1 + lvs ] [ W - 1 - legX + S - col + int(legWpix/2)] = 0 # LL        
        if 0 : maskFR[legstartY][legstartX+S]=np.nan # legs fiducial marker
    
    # NEVER DELETE DIAG CENTER REGISTER / FIDUCIAL MARKER
    if 0 :
        maskFR[mvc][mhc]=np.nan # fiducial marker
    
    if 0 :
        import matplotlib.pyplot as plt     
        plt.figure      ( figsize=[30,30] )
        plt.imshow      ( maskFR )
        plt.xlim        ( [ 0, maskFR.shape[1] - 0] )
        plt.ylim        ( [ 0, maskFR.shape[0] - 0] )
        assert False
    return maskFR


def a3b3mf ( SCIdata, ERRdata, DQdata, rjy, cix ) : # row-j-y index, column-i-x index
    """
    Applies a 3x3 median filter.
    The determination of pixel in the SCI frame 
        determines the pixel in the ERR frame 
    Args: 
        SCIdata : STIS SCI frame, ImageHDU indices 1,4,7... 
        ERRdata : STIS ERR frame, ImageHDU indices 2,5,8...
        DQdata  : STIS DQ  frame, ImageHDU indices 3,6,9...
        rjy     : row    index / y index / j index / vertical   index
        cix     : column index / x index / i index / horizontal index
        
    Attributes:
        SCImedianvalue : replacement pixel value for SCI frame
        ERRmedianvalue : replacement pixel value for ERR frame, 
                            taken from the same x and y as was SCImedianvalue
    """
    
    H = SCIdata.shape[0] # nominal 110
    W = SCIdata.shape[1] # always 1024
    SCIstampL = [] # A list of the pixels forming a stamp of 4, or 6, or 9 pixels
    def cn ( neighbor_rjy, neighbor_cix ) : # check neighbor
        """
        Check the neighboring pixel to see if it, too, has a bad DQ,
            in which case ignore it...
        But if it has a good DQ, then that pixel can be added 
            to the list of candidate pixels... 
        """
        if DQdata[neighbor_rjy][neighbor_cix] == (16 or 256 or 8192) :
            return False
        else :
            return True
    
    # lower left pixel
    if ( rjy-1 >= 0 and cix-1 >= 0 and cn ( rjy-1, cix-1 ) ) :
        SCIstampL.append((SCIdata[rjy-1][cix-1],rjy-1,cix-1))
        
    # lower right pixel
    if ( rjy-1 >= 0 and cix+1 <  W and cn ( rjy-1, cix+1 ) ) :
        SCIstampL.append((SCIdata[rjy-1][cix+1],rjy-1,cix+1))
        
    # upper right pixel
    if ( rjy+1 <  H and cix+1 <  W and cn ( rjy+1, cix+1 ) ) :
        SCIstampL.append((SCIdata[rjy+1][cix+1],rjy+1,cix+1))
            
    # upper left pixel
    if ( rjy+1 <  H and cix-1 >= 0 and cn ( rjy+1, cix-1 ) ) :
        SCIstampL.append((SCIdata[rjy+1][cix-1],rjy+1,cix-1))
        
    # bottom center
    if ( rjy-1 >= 0                and cn ( rjy-1, cix   ) ) :
        SCIstampL.append((SCIdata[rjy-1][cix  ],rjy-1,cix  ))
    
    # top center
    if ( rjy+1 <  H                and cn ( rjy+1, cix   ) ) :
        SCIstampL.append((SCIdata[rjy+1][cix  ],rjy+1,cix  ))
    
    # left center
    if (                cix-1 >= 0 and cn ( rjy  , cix-1 ) ) :
        SCIstampL.append((SCIdata[rjy  ][cix-1],rjy  ,cix-1))
    
    # right center
    if (                cix+1 <  W and cn ( rjy  , cix+1 ) ) :
        SCIstampL.append((SCIdata[rjy  ][cix+1],rjy  ,cix+1))
               
    # This is the case where there are no neighbors 
    # that are also not bad DQ
    # So I'm just returning the bad DQ, for now
    # Possibly, this could become a median of a 3x3 stamp of bad DQ...  
    if len(SCIstampL) == 0 :
        return SCIdata[rjy][cix],ERRdata[rjy][cix]

    SCIstampLsorted = sorted ( SCIstampL, key = lambda x: x[0] )
    
    # Even length, no single median
    if len (SCIstampLsorted) % 2 == 0 : 
        SCImedianvalue = np.median ( [ stamp[0] for stamp in SCIstampL ] )
        lrjy = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 ) - 1 ] [ 1 ] # lesser 
        lcix = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 ) - 1 ] [ 2 ] # lesser
        grjy = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 )     ] [ 1 ] # greater
        gcix = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 )     ] [ 2 ] # greater
        ERRmedianvalue = np.median( [ ERRdata [ lrjy ] [ lcix ], 
                                      ERRdata [ grjy ] [ gcix ] ] )
                                      
    # Odd length, yes single median in center
    else : 
        SCImedianvalue = SCIstampLsorted [ int ( len ( SCIstampLsorted ) / 2 ) ] [ 0 ]
        mrjy = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 ) ] [ 1 ] # median
        mcix = SCIstampL [ int ( len ( SCIstampLsorted ) / 2 ) ] [ 2 ] # median
        ERRmedianvalue = ERRdata[mrjy][mcix]
    return SCImedianvalue, ERRmedianvalue # replacement pixels

def f4 (value):
    """
    Format ONE float  to four decimals, right justified 8 spaces
    """
    return "{:>8.4f}".format(value)
    
def f2 (value):
    """
    Format ONE float  to two decimals, right justified 6 spaces
    """
    return "{:>6.2f}".format(value)
 
def f2f2 (tuple2):
    """
    Format TWO floats to two decimals, right justified 6 spaces
    """
    f2f2tuple2 = f2(tuple2[0]) + ", " + f2(tuple2[1])
    return f2f2tuple2
        
            
def main_function(
        trgFNL  ,
        refFNL  ,
        maskL   ,
        maskB   ,
        radcB   ,
        SFR     ,
        NFR     ,
        excepL  ,
        pyklipB ,
        nmfB
    ):
    """
    Function of the STIS class used to intake and prepare raw STIS files
        for use in Pyklip or NMF
    Preparation includes
        applying a 3x3 median filter
        copying the SCI data into an empirically amplified map to aid with centering
        locating the stellar point through STIS header, radonCenter, gaussian center
        shifting the data on the frame to center upon the stellar point
        porting shifted data to a larger SCIcanvas
        creating a maskFR
        applying the maskFR
        
    Usual variable name conventions for prefixes, suffixes, etc:
        RA Array
        L  List
        FN Filename
        FR frame  
        B  Boolean
        I  Integer
        F  Float  
        T  Tuple
        
    Args:
        trgFNL : target    Filename List
        refFNL : reference Filename List
        maskL  : mask List
        maskB  : mask Boolean
        radcB  : radonCenter Boolean
        SFR    : Start Frame index. SFR = 1 if you're starting at ImageHDU Index 1. 
        NFR    : Number of Frames. 
        
    Attributes:
        torRA    : target or reference Array; an array of indexes
                    0 for a target frame, 1 for a reference frame
        trgSCIRA : target SCI frame Array
        trgERRL
        refSCIRA : reference SCI frame Array
        refERRL
        pasRA    : position angle Array
                    Every target frame's associated position angle
        cenRA    : centers Array
                    Every target frame's associated center
                    IN THEORY, this is supposed to be an exact integer number
                        after the frame has been shifted to center the star using:
                        shiftedSCI = scipy.ndimage.shift
        FRFNL    : Frame Filename List (is not a numpy array)
                    Every frame's associated filename is listed in this
        maskFR
        
    
    """
    allFNL  = [trgFNL,refFNL] # all Filenames List
    torL    = []   # target (0) or reference (1) List
    trgSCIL = []   # target    star SCI frame List
    trgERRL = []   # target    star ERR frame List  
    refSCIL = []   # reference star SCI frame List
    refERRL = []   # reference star ERR frame List
    pasL    = []   # position angle List
    cenL    = []   # centers List
    FRFNL   = []   # Frame Filename List
    maskFR  = None # mask Frame
    print()
     
    # Make a mask, every frame, that is "ndshifted" to same amount as the stellar point
    # (If stellar point was ndshifted, the wedge was ndshifted...)
    WNAXIS1 = (fits.open(allFNL[0][0]))[1].header['NAXIS1'] # subarray width
    HNAXIS2 = (fits.open(allFNL[0][0]))[1].header['NAXIS2'] # subarray height
    CCRPIX1 = (fits.open(allFNL[0][0]))[1].header['CRPIX1'] # stellar point column
    RCRPIX2 = (fits.open(allFNL[0][0]))[1].header['CRPIX2'] # stellar point row
        
    SCIshape = ( HNAXIS2, WNAXIS1 ) 
    stisPos  = ( CCRPIX1, RCRPIX2 )   
    SCIC2Dshape = ( 110 , 213 ) 
    
    voffstis = SCIshape[0]/2 - stisPos[1] + 0 # vertical offset 
    hoffstis = SCIshape[1]/2 - stisPos[0] + 2 # horizontal offset
    print("SCIshape    : ", SCIshape)
    print("SCIC2Dshape : ", SCIC2Dshape)
    print("stisPos     : ", stisPos)
    print("voffstis    : ", voffstis)
    print("hoffstis    : ", hoffstis)

    if pyklipB and maskB :
        # Create mask for each frame that is registered by voffstis and hoffstis
        # Make the mask track the stis wedge as it moves around due to pointing error
        # This results in the least noisy residuals
        maskFR = createmask (maskL, pyklipB, nmfB, SCIC2Dshape, voffstis, hoffstis) 
    if nmfB and maskB : 
        # For NMF, make ONE mask that is as universal to all nmf-bound frames as can be
        # (NMF accommodates one mask, passed in on the side.)
        # Best bet ? is to stick with stis wedge position, and make mask width more generous
        maskFR = createmask (maskL, pyklipB, nmfB, (239,239), voffstis, hoffstis, SCIC2Dshape)    

    for kk in range ( len ( allFNL ) ) :
        print()
        #print("kk               : ", kk)
        # TODO: I can change all kk to tr if necessary
        torI = kk # target or reference Index (or, Integer, capitalized)
        FNL = allFNL[kk] # Filename List
        #print("FNL              : ", FNL)
        
        # TODO: DIAG AND DEVEL ONLY
        if 0:
            if kk  == 1 : continue

        for jj in range ( len ( allFNL[kk] ) ):
            parallelTL = [] # parallel Tuple List, a List of Tuples that are going to parallel
            print()
            #print("kk jj            : ", kk, jj)
            dnfn = allFNL[kk][jj]
            # dnfn ("DNFN") = 'Directory Name and File Name',
            # where Directory is at local level to this script.
            # decapitalized because of how frequently it occurs
            #print("dnfn             : ", dnfn)
            HDUL            = fits.open ( dnfn )
            FN              = os.path.basename ( dnfn )
            #print("FN               : ", FN)
            #directoryPath   = os.path.dirname ( dnfn ) # TODO: Not needed, now.
            #print("directoryPath    : ", directoryPath)# TODO: Not needed, now.
            split           = os.path.splitext ( os.path.basename ( dnfn ) )
            token_          = split[0].split('_')
            rtfn            = token_[0] # Root Filename, de-capitalized for frequency
            #print("rtfn             : ", rtfn, end="")
            print(rtfn, "", end="")
                        
            SUBARRAY = bool ( HDUL [ 0 ].header[ 'SUBARRAY' ] )
            POSTARG1        = HDUL [ 0 ].header[ 'POSTARG1' ]  
            POSTARG2        = HDUL [ 0 ].header[ 'POSTARG2' ]  
            PROPAPER        = HDUL [ 0 ].header[ 'PROPAPER' ]  
            CENTERA1        = HDUL [ 0 ].header[ 'CENTERA1' ]  
            CENTERA2        = HDUL [ 0 ].header[ 'CENTERA2' ]  
            SIZAXIS1        = HDUL [ 0 ].header[ 'SIZAXIS1' ]  # 1060 for all STIS
            SIZAXIS2        = HDUL [ 0 ].header[ 'SIZAXIS2' ]  # 110, 427, 512, 1024, 80, 316, etc
            CCDGAIN         = HDUL [ 0 ].header[ 'CCDGAIN'  ]            
            NAXIS1          = HDUL [ 1 ].header[ 'NAXIS1'   ]  # subarray width
            NAXIS2          = HDUL [ 1 ].header[ 'NAXIS2'   ]  # subarray height
            CRPIX1          = HDUL [ 1 ].header[ 'CRPIX1'   ]  # subarray x-coord
            CRPIX2          = HDUL [ 1 ].header[ 'CRPIX2'   ]  # subarray y-coord
            LTV1            = HDUL [ 1 ].header[ 'LTV1'     ]  
            LTV2            = HDUL [ 1 ].header[ 'LTV2'     ]  
            FRH             = HDUL [ 1 ].data.shape[0]         
            FRW             = HDUL [ 1 ].data.shape[1]
            POSTARG1_pixels      = POSTARG1    / PLATESCALE
            POSTARG2_pixels      = POSTARG2    / PLATESCALE        
            CRPIX1mLTV1          = CRPIX1      - LTV1
            CRPIX2mLTV2          = CRPIX2      - LTV2
            xActual              = CRPIX1mLTV1 + POSTARG1_pixels
            yActual              = CRPIX2mLTV2 + POSTARG2_pixels
            CENTERA1mxActual     = CENTERA1    - xActual
            CENTERA2myActual     = CENTERA2    - yActual
            pixelsFromLeft       = math.ceil ( xActual ) # which half left or right?
            pixelsFromBottom     = math.ceil ( yActual ) # which half top or bottom? 
            cCRPIX1F =     CRPIX1  # column stis intrument stellar point Float
            rCRPIX2F =     CRPIX2  #    row stis intrument stellar point Float
            cCRPIX1I = int(CRPIX1) # column stis intrument stellar point Integer
            rCRPIX2I = int(CRPIX2) #    row stis intrument stellar point Integer

            # Get the mask's wedge thickness (which depends on the file header)
            PROPAPER_2 = PROPAPER.replace("WEDGE","")
            if   "A" in PROPAPER_2 : 
                wedgeletter = "A"
            elif "B" in PROPAPER_2 : 
                wedgeletter = "B" # Just leave for expansion
            wedgearcsec = float ( PROPAPER_2.replace ( wedgeletter, "" ) )
            wedgepixels = wedgearcsec / PLATESCALE
        
            # Get the wcs block to calculate the position angle
            warnings.filterwarnings("ignore",category=wcs.FITSFixedWarning)
            wcsO = wcs.WCS ( HDUL [ 1 ].header ) # ImageHDU only, not PrimaryHDU
            rot_angle = np.rad2deg ( math.atan2 ( wcsO.wcs.cd[1][0], wcsO.wcs.cd[0][0] ) )
            wcspa     = 180 * np.sign ( rot_angle ) - rot_angle

            # Get the STIS header's star position in relation to subframe
            # (As distinguished from the star position in relation to the CCD.)
            stisPos = (cCRPIX1F, rCRPIX2F) # horz center in x, vert center in y
            usePos = stisPos # Default to STIS header ( CRPIX1, CRPIX2 )

            # Get the mode of EXPTIME, prior to taking data from frames
            exptimeL=[]
            for ii in range ( 1, len ( HDUL ), 3 ) : # SCI only
                exptimeL.append ( HDUL [ ii ].header[ 'EXPTIME' ] )
            exptimeMedian = statistics.median ( exptimeL )
            
            while ( SFR - 1 ) % 3 != 0 :
                SFR = SFR + 1
            startatindex    = SFR
                #  1, 4, 7,10,13,16,19,22,25,28 
                # 31,34,37,40,43,46,49,52,55,58
                # 61,64,67,70,73,76,79,82,85,88 # 64 is a gaussian test
                # 91
            if ( startatindex - 1 ) % 3 != 0 : startatindex = 1 
            
            stopbeforeindex = len ( HDUL )
            stopbeforeindex = startatindex + NFR * 3
            if stopbeforeindex > len ( HDUL ) : stopbeforeindex = len ( HDUL ) 
            # Get SCI frames between index startatindex and stopbeforeindex 
            for ii in range ( startatindex, stopbeforeindex, 3 ) :
                if 0 :
                    print()
                    print()
                    print("kk, jj, ii, nth  : ", kk, jj, ii, int((ii+2)/3), "** This starts a new frame **")
                    print(ii,"", end="" )
                EXPTIME = HDUL [ ii ].header[ 'EXPTIME'     ]
                if EXPTIME > exptimeMedian :
                    print(" {EXPTIME>exptimeMedian;dropping frame ", ii, "}", end="") 
                    continue
                
# REQUEST FOR CENTERS FROM HEADER GOES HERE (removed for now)
                
                SCI     = HDUL [ ii     ] # SCI subarray aka 'frame'
                ERR     = HDUL [ ii + 1 ] # ERR subarray aka 'frame'
                DQ      = HDUL [ ii + 2 ] # DQ  subarray aka 'frame'

                parallelT = (
                    np.array ( HDUL [ ii + 0 ] .data ) , # SCI.data
                    np.array ( HDUL [ ii + 1 ] .data ) , # ERR.data
                    np.array ( HDUL [ ii + 2 ] .data ) , #  DQ.data
                    rtfn     , 
                    ii       ,
                    wcspa    ,
                    rCRPIX2F ,
                    cCRPIX1F ,
                    radcB    ,
                    NAXIS2   ,
                    EXPTIME  ,
                    usePos   ,
                    maskB    ,
                    maskL    ,
                    pyklipB  ,
                    nmfB     ,
                    CCDGAIN
                )
                parallelTL.append(parallelT)

                SCIcanvas = None
                ERRcanvas = None
                center    = None

            HDUL.close()
            parallelProcessPool = Pool ( cpuCount - 1)
            parallelIterableTimerIndices = range ( len ( parallelTL ) )
            tasks = [
                parallelProcessPool.apply_async (
                    parallelfunction,
                    args = (
                        parallelTimerIndex ,
                        parallelT,
                        maskFR
                    )
                )
                for parallelTimerIndex, parallelT in zip ( parallelIterableTimerIndices, parallelTL ) 
            ]
            parallelProcessPool.close()
            parallelProcessPool.join()
            parallelProcessResult = [ task.get() for task in tasks ]
            #print("len(parallelProcessResult) : ", len(parallelProcessResult))

            for ii in range ( len ( parallelProcessResult ) ) :
                returnT = parallelProcessResult[ii]
                #print("len(parallelProcessResult[ii]) : ", len(parallelProcessResult[ii]))
                #print("len(returnT) : ", len(returnT))
                #print("returnT[2] wcspa : ", returnT[2])
                SCIcanvas = returnT [ 0 ] 
                ERRcanvas = returnT [ 1 ] 
                wcspa     = returnT [ 2 ] # TODO: optimize later
                center    = returnT [ 3 ] # TODO: optimize later
                rtfn      = returnT [ 4 ] # TODO: optimize later
                torL   .append(torI) # torI = kk. 'kk' maintains top level dimension.
                if kk == 0 :
                    trgSCIL.append(SCIcanvas)
                    trgERRL.append(ERRcanvas)
                if kk == 1 :
                    refSCIL.append(SCIcanvas)
                    refERRL.append(ERRcanvas)
                pasL   .append(wcspa)
                cenL   .append(center)
                FRFNL  .append(rtfn)                
            

            
    torRA    = np.array(torL)    
    trgSCIRA = np.array(trgSCIL)
    refSCIRA = np.array(refSCIL)
    trgERRRA = np.array(trgERRL)
    refERRRA = np.array(refERRL)
    pasRA    = np.array(pasL)
    cenRA    = np.array(cenL)
    print("torRA   .shape   : ", torRA   .shape)
    print("trgSCIRA.shape   : ", trgSCIRA.shape)
    print("refSCIRA.shape   : ", refSCIRA.shape)
    print("pasRA   .shape   : ", pasRA   .shape)
    print("cenRA   .shape   : ", cenRA   .shape)
    
    # DIAG , DEVEL , TESTING : will be removed
    if nmfB : 
        checkfornans (trgSCIRA)
        checkfornans (refSCIRA)
        checkfornans (trgERRRA)
        checkfornans (refERRRA)
            
    return torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR









class stishubbleData(Data):
    """
    Basic class to interface with a basic direct imaging dataset

    Args:
        input_SCI: either a 1-D list of filenames to read in, or a 3-D cube of all data (N, y, x)
        centers: array of shape (N,2) for N centers in the format [x_cent, y_cent]
        parangs: Array of N for the parallactic angle rotation of the target (used for ADI) [in degrees]
        wvs: Array of N wavelengths of the images (used for SDI) [in microns]. For polarization data, defaults to "None"
        IWA: a floating point scalar (not array). Specifies to inner working angle in pixels
        filenames: Array of size N for the actual filepath of the file that corresponds to the data
        flipx (boo): if True, the input images are right-handed (East clockwise of North) and need to be flipped for North-up-East-left

    Attributes:
        input: Array of shape (N,y,x) for N images of shape (y,x)
        centers: Array of shape (N,2) for N centers in the format [x_cent, y_cent]
        filenums: Array of size N for the numerical index to map data to file that was passed in
        filenames: Array of size N for the actual filepath of the file that corresponds to the data
        PAs: Array of N for the parallactic angle rotation of the target (used for ADI) [in degrees]
        wvs: Array of N wavelengths of the images (used for SDI) [in microns]. For polarization data, defaults to "None"
        wcs: Array of N wcs astormetry headers for each image.
        IWA: a floating point scalar (not array). Specifies to inner working angle in pixels
        output: Array of shape (b, len(files), len(uniq_wvs), y, x) where b is the number of different KL basis cutoffs
    """
    def __init__(
        self             ,
        trgFNL           ,
        refFNL           ,
        maskL            ,
        maskB            ,
        radcB            ,
        SFR              ,
        NFR              ,
        excepL           ,
        pyklipB          ,
        nmfB             ,
#       input_SCI       ,
#       centers          ,
#       parangs   = None ,
        wvs       = None ,
        IWA       = 0    ,
#       filenames = None ,
        flipx     = False
    ):
    
        super(stishubbleData, self).__init__()
        
        print("trgFNL           : ", trgFNL)
        print("refFNL           : ", refFNL)
        print("maskL            : ", maskL)
        print("maskB            : ", maskB)
        print("radcB            : ", radcB)
        print("SFR              : ", SFR)
        print("NFR              : ", NFR)
        
        torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR = main_function(
                trgFNL  ,
                refFNL  ,
                maskL   ,
                maskB   ,
                radcB   ,
                SFR     ,
                NFR     ,
                excepL  , 
                pyklipB ,
                nmfB
            ) 

        # TODO: Append or concat refSCIRA
        if 1 :
            input_SCI = np.concatenate ( ( trgSCIRA,  refSCIRA ) )
            input_ERR = np.concatenate ( ( trgERRRA,  refERRRA ) )
        # TODO: DIAG AND DEVEL ONLY
        if 0 :
            input_SCI = trgSCIRA
            input_ERR = trgERRRA
        
        # TODO: add refSCIRA for pyklip
        # TODO: trgERRRA, refERRRA are waiting for NMF 
        # TODO: Limit centers to only target frames
        # Is there any utility at all in keeping reference centers?
        # largely for historical purposes of checking 
        # how reference frames respond to centering efforts
        # the present system is to truncate them when time to isolate targets
        centers    = cenRA
        
        # TODO: Limit parangs to only target frames
        # Is there any utility at all in keeping reference parangs?
        # There's no real case to capture this
        # the present system is to truncate them when time to isolate targets
        parangs    = pasRA
        
        # TODO: Limit filenames to only target frames
        # There is absolutely utility to keeping reference filenames
        # the present system is to truncate them when time to isolate targets
        filenames  = FRFNL
        
        if 0    : 
            print("torRA            :  [", end="" )
            for tr in torRA : print(tr, ", ", end="") # SCIcanvas 
            print("]")                    
            print("input_SCI       :  [", end="" )
            for fr in input_SCI : print(fr[120][140], ", ", end="") # SCIcanvas 
            print("]")    
            print("input_ERR       :  [", end="" )
            for fr in input_ERR : print(fr[120][140], ", ", end="") # SCIcanvas 
            print("]")    
            print("centers          :  [", end="" )
            for cen in centers   : print("(", f2f2(cen),  ")", end="")
            print("]")
            print("parangs          :  [", end="" )
            for pa in parangs    : print(f2(pa),        ", ", end="")
            print("]")
            print("filenames        : ", filenames)



        self._torRA  = torRA
        self._maskFR = maskFR
        
        # read in the data
        if np.array(input_SCI).ndim == 1:
            self._inputSCI = self.readdata(input_SCI)
            self._inputERR = self.readdata(input_ERR)
        else:
            # assume this is a 3-D cube
            self._inputSCI = np.array(input_SCI)
            self._inputERR = np.array(input_ERR)
        
        nfiles = self.input.shape[0]

        self.centers = np.array(centers)

        if self.centers.shape [0] != nfiles:
            raise ValueError("Input data has shape {0} but centers has shape {1}".format(self.input.shape, self.centers.shape))

        if parangs is not None:
            self._PAs = parangs
        else:
            self._PAs = np.zeros(nfiles)

        if wvs is not None:
            self._wvs = wvs
        else:
            self._wvs = np.ones(nfiles)

        self.IWA = IWA

        if filenames is not None:
            self._filenames = filenames
            unique_filenames = np.unique(filenames)                                                                                 
            self._filenums = np.array([np.argwhere(filename == unique_filenames).ravel()[0] for filename in filenames])
        else:
            self._filenums = np.arange(nfiles)
            self._filenames = np.array(["{0}".format(i) for i in self.filenums])

        self.flipx = flipx

        self._wcs = np.array([wcsgen.generate_wcs(parang, center, flipx=flipx) for parang, center in zip(self._PAs, self.centers)])

        self._output = None


         
    ################################
    ### Instance Required Fields ###
    ################################

    @property
    def input(self):
        return self._inputSCI
    @input.setter
    def input(self, newval):
        self._inputSCI = newval

    @property
    def centers(self):
        return self._centers
    @centers.setter
    def centers(self, newval):
        self._centers = newval

    @property
    def filenums(self):
        return self._filenums
    @filenums.setter
    def filenums(self, newval):
        self._filenums = newval

    @property
    def filenames(self):
        return self._filenames
    @filenames.setter
    def filenames(self, newval):
        self._filenames = newval

    @property
    def PAs(self):
        return self._PAs
    @PAs.setter
    def PAs(self, newval):
        self._PAs = newval

    @property
    def wvs(self):
        return self._wvs
    @wvs.setter
    def wvs(self, newval):
        self._wvs = newval

    @property
    def wcs(self):
        return self._wcs
    @wcs.setter
    def wcs(self, newval):
        self._wcs = newval


    @property
    def IWA(self):
        return self._IWA
    @IWA.setter
    def IWA(self, newval):
        self._IWA = newval

    @property
    def output(self):
        return self._output
    @output.setter
    def output(self, newval):
        self._output = newval
 

    def readdata(self, filepaths):
        """
        Reads in the data from the files in the filelist and writes them to fields.
        """
        input_SCI = []
        for filename in filepaths:
            with fits.open(filename) as hdulist:
                # assume the data is in the primary header
                data = hdulist[0].data
                # if this data has more than 2-D, collapse the Data
                dims = data.shape
                if np.size(dims) > 2:
                    nframes = np.prod(dims[:-2])
                    # collapse in all dimensions except y and x
                    data.shape = (nframes, dims[-2], dims[-1])

                input_SCI.append(data)

        # collapse data again
        input_SCI = np.array(input_SCI)
        dims = input_SCI.shape
        if np.size(dims) > 3:
            nframes = np.prod(dims[:-2])
            # collapse in all dimensions except y and x
            input_SCI.shape = (nframes, dims[-2], dims[-1])


    def savedata(self, filepath, data, klipparams=None, filetype="", zaxis=None, more_keywords=None):
        """
        Saves data for this instrument

        Args:
            filepath: filepath to save to
            data: data to save
            klipparams: a string of KLIP parameters. Write it to the 'PSFPARAM' keyword
            filtype: type of file (e.g. "KL Mode Cube", "PSF Subtracted Spectral Cube"). Wrriten to 'FILETYPE' keyword
            zaxis: a list of values for the zaxis of the datacub (for KL mode cubes currently)
            more_keywords (dictionary) : a dictionary {key: value, key:value} of header keywords and values which will
                                         written into the primary header
        """
        hdulist = fits.HDUList()
        hdulist.append(fits.PrimaryHDU(data=data))

        # save all the files we used in the reduction
        # we'll assume you used all the input files
        # remove duplicates from list
        filenames = np.unique(self.filenames)
        nfiles = np.size(filenames)
        hdulist[0].header["DRPNFILE"] = (nfiles, "Num raw files used in pyKLIP")
        for i, filename in enumerate(filenames):
            hdulist[0].header["FILE_{0}".format(i)] = filename + '.fits'

        # write out psf subtraction parameters
        # get pyKLIP revision number
        pykliproot = os.path.dirname(os.path.dirname(os.path.realpath(__file__)))
        # the universal_newline argument is just so python3 returns a string instead of bytes
        # this will probably come to bite me later
        try:
            pyklipver = subprocess.check_output(['git', 'rev-parse', '--short', 'HEAD'], cwd=pykliproot, universal_newlines=True).strip()
        except:
            pyklipver = "unknown"
        hdulist[0].header['PSFSUB'] = ("pyKLIP", "PSF Subtraction Algo")
        hdulist[0].header.add_history("Reduced with pyKLIP using commit {0}".format(pyklipver))
        hdulist[0].header['CREATOR'] = "pyKLIP-{0}".format(pyklipver)

        # store commit number for pyklip
        hdulist[0].header['pyklipv'] = (pyklipver, "pyKLIP version that was used")

        if klipparams is not None:
            hdulist[0].header['PSFPARAM'] = (klipparams, "KLIP parameters")
            hdulist[0].header.add_history("pyKLIP reduction with parameters {0}".format(klipparams))

        # write z axis units if necessary
        if zaxis is not None:
            # Writing a KL mode Cube
            if "KL Mode" in filetype:
                hdulist[0].header['CTYPE3'] = 'KLMODES'
                # write them individually
                for i, klmode in enumerate(zaxis):
                    hdulist[0].header['KLMODE{0}'.format(i)] = (klmode, "KL Mode of slice {0}".format(i))
                hdulist[0].header['CUNIT3'] = "N/A"
                hdulist[0].header['CRVAL3'] = 1
                hdulist[0].header['CRPIX3'] = 1.
                hdulist[0].header['CD3_3'] = 1.

        if "Spectral" in filetype:
            uniquewvs = np.unique(self.wvs)
            # do spectral stuff instead
            # because wavelength solutoin is nonlinear, we're not going to store it here
            hdulist[0].header['CTYPE3'] = 'WAVE'
            hdulist[0].header['CUNIT3'] = "N/A"
            hdulist[0].header['CRPIX3'] = 1.
            hdulist[0].header['CRVAL3'] = 0
            hdulist[0].header['CD3_3'] = 1
            # write it out instead
            for i, wv in enumerate(uniquewvs):
                hdulist[0].header['WV{0}'.format(i)] = (wv, "Wavelength of slice {0}".format(i))


        # store WCS information
        wcshdr = self.output_wcs[0].to_header()
        for key in wcshdr.keys():
            hdulist[0].header[key] = wcshdr[key]

        # but update the image center
        center = self.output_centers[0]
        hdulist[0].header.update({'PSFCENTX': center[0], 'PSFCENTY': center[1]})
        hdulist[0].header.update({'CRPIX1': center[0], 'CRPIX2': center[1]})
        hdulist[0].header.add_history("Image recentered to {0}".format(str(center)))

        if more_keywords is not None:
            hdulist[0].header.update(more_keywords)

        try:
            hdulist.writeto(filepath, overwrite=True)
        except TypeError:
            hdulist.writeto(filepath, clobber=True)
        hdulist.close()
