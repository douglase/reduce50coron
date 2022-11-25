
##################################################
# Title:    stishubble.py                        #
# Author:   Robert M Thompson                    #
# Date:     Oct 2 2021                           #
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
#import psutil
from multiprocessing import Pool
import logging as log
#https://www.stsci.edu/hst/instrumentation/stis/observing-strategies/available-modes/stis-bar5
#"The wedges vary in width from 0.5 to 3.0 arcseconds over their 50 arcseconds length"
#SLOPE     = 0 # In case you need a vertical rectangle over the wedge
#SLOPE     = 0.025 # (1/40)
SLOPE      = (((3.0 - 0.5)/2)/50) # Equals 0.025 Equals 1/40
PLATESCALE = 0.05
#cpuCount   = 7 # psutil.cpu_count(logical = False)
cpuCount   = 15 # psutil.cpu_count(logical = False)
useParallelB  = False
useParallelB  = True


def parallelfunction (    
        parallelTimerIndex ,
        parallelT,            # parallel Tuple
        maskFR        
    ) :
    #print("parallelTimerIndex : ", parallelTimerIndex)
    SCIdataFR = parallelT [  0 ]
    ERRdataFR = parallelT [  1 ]
    DQ_dataFR = parallelT [  2 ]
    rtfn      = parallelT [  3 ] 
    ii        = parallelT [  4 ]
    wcspa     = parallelT [  5 ]
    RCRPIX2F  = parallelT [  6 ]
    CCRPIX1F  = parallelT [  7 ]
    radcB     = parallelT [  8 ]    
    HNAXIS2I  = parallelT [  9 ]
    EXPTIME   = parallelT [ 10 ]
    radcPos   = parallelT [ 11 ]
    maskB     = parallelT [ 12 ]
    maskL     = parallelT [ 13 ]
    pyklipB   = parallelT [ 14 ]
    nmfB      = parallelT [ 15 ]
    CCDGAIN   = parallelT [ 16 ]
    CCRPIX1I  = int(CCRPIX1F) # column stis instrument stellar point Integer
    RCRPIX2I  = int(RCRPIX2F) #    row stis instrument stellar point Integer
    stisPos   = (CCRPIX1F, RCRPIX2F)
    
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
                
    # if 0 : print("\nP pixel check 1    : ", SCIdataFR[120][140])
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
            vdist  = rjy - RCRPIX2I
            hdist  = cix - CCRPIX1I
            radius = math.sqrt ( pow ( vdist, 2 ) + pow ( hdist, 2 ) )
            SCIdataFR[rjy][cix] = SCIdataFR[rjy][cix] * pow ( radius, plce )
    # if 0 : print("P pixel check 2    : ", SCIdataFR[120][140])

    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 3 / 14
    "We aligned the centers of the stars using Radon Transform-based
    center determination method described in Ref. 54 after the above-mentioned
    median filtering. We took the SCI extension data, start center searching from
    the instrumental center given by its CRPIX1 and CRPIX2 header values; to make
    use of the 45 degree and 135 degree major diffraction spikes (Fig. 3) for the
    alignment of the STIS images"
    """
    # Get radonCenter's determination of the stellar point
    radcPos = (0.0,0.0)
    if radcB : # radonCenter Boolean
        radcPos = radonCenter.searchCenter ( 
            SCIdataFR         ,
            CCRPIX1I             , # x ; column stellar point Integer
            RCRPIX2I             , # y ; row    stellar point Integer
            size_window = math.floor ( HNAXIS2I / 2 ),
            size_cost   = 7  ,
            theta       = [45, 135]#, 225, 315]
        )                    
        # if 0 : print("P radcPos          : (", rtfn, ii, ")", f2f2(radcPos))
        

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
    # if 0 : print("P pixel check 3    : ", SCIdataFR[120][140]) # Cannot do this for 80-high    
    # if 0 : print("P C")
    
    # Get the amount of shift required to center the subarray onto the star 
    voff = SCIdataFR.shape[0]/2 - radcPos[1] # vertical offset 
    hoff = SCIdataFR.shape[1]/2 - radcPos[0] # horizontal offset
    # if 0 : print("P native voff      : ",voff)
    if SCIdataFR.shape[0] ==  80 : voff = 40.0 - radcPos[1]    
    if SCIdataFR.shape[0] == 316 : voff = 69.0 - radcPos[1]
    # if 0 : print("P magic  voff      : ",voff)     
    
    shiftedSCIdataFR = scipy.ndimage.shift ( SCIdataFR, np.array ( [ voff, hoff ] ) )
    shiftedERRdataFR = scipy.ndimage.shift ( ERRdataFR, np.array ( [ voff, hoff ] ) )
    # if 0 : print("P pixel check 4    : ", shiftedSCIdataFR[120][140])
#    if 0:
#        import matplotlib.pyplot as plt
#        plt.figure      ( figsize=[5,5] )
#        plt.imshow      ( shiftedSCIdataFR )
#        plt.xlim        ( [ 0, shiftedSCIdataFR.shape[1]] )
#        plt.ylim        ( [ 0, shiftedSCIdataFR.shape[0]] )
#        plt.title       ("P shiftedSCIdataFR")        
    
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
    # if 0 : print("P pixel check 5    : ", shiftedSCIdataFR[120][140]) 
    if SCIdataFR.shape[0] == 316 :
        SCIC2D = Cutout2D (
            shiftedSCIdataFR ,
            position = ( shiftedSCIdataFR.shape[1]/2, 69 ),
            size     = (lh,lw) ,
            wcs      = None # TODO add wcs to this
        )
    # if 0 : print("P pixel check 6    : ", shiftedSCIdataFR[120][140])
    # if 0 : print("P D")
    
#    if 0:
#        import matplotlib.pyplot as plt
#        plt.figure      ( figsize=[5,5] )
#        plt.imshow      ( SCIC2D.data )
#        plt.xlim        ( [ 0, SCIC2D.shape[1]] )
#        plt.ylim        ( [ 0, SCIC2D.shape[0]] )
#        plt.title       ("P SCIC2D")
        
    ERRC2D = Cutout2D (
        shiftedERRdataFR ,
        position = ( shiftedERRdataFR.shape[1]/2 , shiftedERRdataFR.shape[0]/2 ),
        size     = (lh,lw) ,
        wcs      = None # TODO add wcs to this
    )
    if ERRdataFR.shape[0] == 316 :
        ERRC2D = Cutout2D (
            shiftedERRdataFR ,
            position = ( shiftedSCIdataFR.shape[1]/2, 69 ),
            size     = (lh,lw) ,
            wcs      = None # TODO add wcs to this
        )    
    # if 0 : print("P ERRC2D.shape     : (", rtfn, ii, ")", ERRC2D.shape)
    

# PREMASK P                    
    if 1 :
        premask = copy.deepcopy ( SCIC2D.data )
                              
    # Apply maskFR if (the mask boolean says to) AND (this is not for NMF)
    if pyklipB and maskB and not nmfB :
        SCIC2D.data [ maskFR == 0 ] = np.nan
        ERRC2D.data [ maskFR == 0 ] = np.nan
        if 0 :
            import matplotlib.pyplot as plt
            plt.rcParams.update({'figure.max_open_warning': 0})
            plt.figure      ( figsize=[5,5] ) # [20,20]
            plt.imshow      ( SCIC2D.data )
            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
            plt.title       ( "P" + rtfn + ", " + str ( ii ) + ", " + str ( (ii+2)/3 ) )

    # If Pyklip, Convert saturated pixels to np.nan, based on gain
    # NMF cannot digest nans, so cap the value
    if 1 : 
        if CCDGAIN == 4 :
            #pixel threshold for nan = 130000 / 4 = 32500
            if pyklipB :
                SCIC2D.data [ SCIC2D.data > 32500 ] = np.nan
#            if nmfB :
#                ERRC2D.data [ SCIC2D.data > 32500 ] = 100 # not ideal
#                SCIC2D.data [ SCIC2D.data > 32500 ] = 10000 # not ideal
        if CCDGAIN == 1 :
            #pixel threshold for nan =              33000
            if pyklipB : 
                SCIC2D.data [ SCIC2D.data > 33000 ] = np.nan
#            if nmfB : 
#                ERRC2D.data [ SCIC2D.data > 33000 ] = 100 # not ideal              
#                SCIC2D.data [ SCIC2D.data > 33000 ] = 10000 # not ideal

    """
    Bin Ren, Laurent Pueyo
    "Post-processing of the HST STIS coronagraphic observations" (2017)
    Page 5 / 14                
    "In order to reduce the color-mismatch which creates unrealistic
    halos (e.g., Fig. 8), for each target readout, we normalized itself
    and all the PSF readouts by first applying an algorithmic mask
    to block the physical wedges and the primary diffraction spikes,
    then subtracting the mean and dividing the standard deviation of
    each readout" [sic]
    """
    # NOTE THAT: NMF fails if the data is given this operation                
    if pyklipB and not nmfB :
#        if 0 :
#            import matplotlib.pyplot as plt
#            plt.figure      ( figsize=[5,5] )
#            plt.imshow      ( SCIC2D.data )
#            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
#            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
#            plt.title       ( "P before sub of mean")                
        meanSCIC2Ddata = np.nanmean(SCIC2D.data)
        # if 0 : print("P meanSCIC2Ddata : ", meanSCIC2Ddata)
        meanERRC2Ddata = np.nanmean(ERRC2D.data)
        SCIC2D.data = SCIC2D.data - meanSCIC2Ddata
#        if 0 :
#            import matplotlib.pyplot as plt
#            plt.figure      ( figsize=[5,5] )
#            plt.imshow      ( SCIC2D.data )
#            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
#            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
#            plt.title       ( "P after sub of mean")
        ERRC2D.data = ERRC2D.data - meanERRC2Ddata
        stddevSCIC2D = np.nanstd(SCIC2D.data)
        # if 0 : print("P stddevSCIC2D : ", stddevSCIC2D)
        stddevERRC2D = np.nanstd(ERRC2D.data)
        SCIC2D.data = SCIC2D.data / stddevSCIC2D
        #if 1 : print("P pixel check -3    : ", SCIC2D.data[120-90][140]) # nan    
        
#        if 0 :
#            import matplotlib.pyplot as plt
#            plt.figure      ( figsize=[5,5] )
#            plt.imshow      ( SCIC2D.data )
#            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
#            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
#            plt.title       ( "P after div by std")                                    
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
    # if 0 : print("P pixel check -3    : ", SCIcanvas[120][140]) # 0.0
    if pyklipB and not nmfB : SCIcanvas[:] = np.nan   # Pyklip requires nans  background
    SCIcanvas [ aBR : aTR , aLC : aRC ] = SCIC2D.data [ bb : - bb , bb : - bb ]
    # if 0 : print("P pixel check -2    : ", SCIcanvas[120][140])    
    ERRcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
    if pyklipB and not nmfB : ERRcanvas[:] = np.nan   # Pyklip requires nans  background
    ERRcanvas [ aBR : aTR , aLC : aRC ] = ERRC2D.data [ bb : - bb , bb : - bb ]
#    if 0 :
#        import matplotlib.pyplot as plt     
#        plt.figure      ( figsize=[3,3] )
#        plt.imshow      ( SCIcanvas.data )
#        plt.xlim        ( [ 0, SCIcanvas.shape[1]] )
#        plt.ylim        ( [ 0, SCIcanvas.shape[0]] )                
                    
#    if 0 :
#        center = radcPos # TODO: Check if this is moot after ndshift
    center = (int(hypotenuse/2),int(hypotenuse/2))    

# PREMASK P                   
    if 1 : 
        premaskcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
        if pyklipB and not nmfB : premaskcanvas[:] = np.nan   # Pyklip requires nans  background
        premaskcanvas [ aBR : aTR , aLC : aRC ] = premask [ bb : - bb , bb : - bb ]

#    if 0 :                         
#        returnT = (
#            SCIcanvas ,
#            ERRcanvas ,
#            wcspa     ,
#            center    ,
#            rtfn      ,
#        )
    if 1 :                         
        returnT = (
            SCIcanvas ,
            ERRcanvas ,
            wcspa     ,
            center    ,
            rtfn      ,
# PREMASK P
            premaskcanvas ,
            ii           
        )
        
    return returnT
    
    
    
def checkfornansDC (dataRA):
    for FR in range ( len ( dataRA ) ) : 
        for row in range ( len ( dataRA [ FR ] ) ) :
            for col in range ( len ( dataRA [ FR ] [ row ] ) ) :
                if np.isnan ( dataRA [ FR ] [ row ] [col ] ) == True :
                    print("There is a np.nan at row ", row, "column", col)
                    assert False
# debug
def checkforzerorowsDC (dataRA):
    for FR in range ( len ( dataRA ) ) :
        for row in range ( len ( dataRA [ FR ] ) ) :
            is_all_zero = np.all((row==0))
            if is_all_zero:
                print("is_all_zero:", is_all_zero, "at row", row)
#                assert False
def checkfornansFR (FR):
    for row in range ( FR.shape[0] ) :
        for col in range ( FR.shape[1] ) :
            if np.isnan ( FR [ row ] [col ] ) == True :
                print("There is a np.nan at row ", row, "column", col)
                assert False
# debug
def checkforzerorowsFR (FR):
    for row in range ( FR.shape[0] ) :
        didgt0occuryet = False
        for col in range ( FR.shape[1] ) :
            if FR [ row ] [col ] > 0 :
                didgt0occuryet = True
                continue
        if didgt0occuryet == False:
            print("row = ", row)
            for col in range ( FR.shape[1] ) :
                print(FR [ row ] [col ])                

#        is_all_zero = np.all((row==0))
#        if is_all_zero:
#            print("is_all_zero:", is_all_zero, "at row", row)
#            assert False
    
def viewprocessedframes ( DC, filenames, PAs, pyklipB, nmfB ) : # Data Cube (TODO: WCS)
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
            #GOTITprint("nusaFR.shape   : ", nusaFR.shape)
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

     #GOTITprint("TLbo : {", TLbo, "}")    
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
     
          
    
def viewpreparedframes ( datacube, zoom, sidelength, datacubeFNs, fnprefix, tag, reticleB = True ) :
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
    
    print ("sidelength            : ", sidelength, "units of 72 pixels")    
    datacube_copy      = copy.deepcopy(datacube)    
    print ("len (datacube_copy)   : ", len (datacube_copy), "unique frames, including both target and reference")
    sidelengthpixels   = sidelength * 72
    print ("sidelengthpixels      : ", sidelengthpixels, "monoplot width, and/or height, in pixels")
    multisidelengthMAX = 2 ** 16 # matplotlib hard-coded limit
    print ("multisidelengthMAX    : ", multisidelengthMAX, "pixels")    
    rowMAX             = int ( multisidelengthMAX / sidelengthpixels )
    print ("rowMAX                : ", rowMAX)    
    colXPR             = 6 # 3 is ideal, for me, for this workstation, using one vertical monitor
    print ("colXPR                : ", colXPR,", note: equates to colMAX")    
#    print("      len ( datacube_copy ) / colXPR       : ", len ( datacube_copy ) / colXPR )
#    print("int ( len ( datacube_copy ) / colXPR )     : ", int ( len ( datacube_copy ) / colXPR ) )
#    print("int ( len ( datacube_copy ) / colXPR ) + 1 : ", int ( len ( datacube_copy ) / colXPR ) + 1)
#    print("math.ceil(len (datacube_copy) / colXPR)    : ", math.ceil(len (datacube_copy) / colXPR))
#    if len ( datacube_copy ) / colXPR == 0 :
#        rowXPR         = int ( len (datacube_copy) / colXPR )
#    else :
#        rowXPR         = int ( len (datacube_copy) / colXPR ) + 1
    rowXPR = math.ceil(len (datacube_copy) / colXPR)
    print ("rowXPR 1              : ", rowXPR)
    if rowXPR > rowMAX : rowXPR = rowMAX
    print ("rowXPR 2              : ", rowXPR)
    monoplotsavailable     = rowXPR * colXPR   
    print ("monoplotsavailable    : ", monoplotsavailable, "individual monoplots available in this multiplot")    
    multiplotwidth     = colXPR * sidelength
    print ("multiplotwidth        : ", multiplotwidth, "units of 72 pixels")    
    multiplotheight    = rowXPR * sidelength
    print ("multiplotheight       : ", multiplotheight, "units of 72 pixels")    
    numberofmultiplots = 1 # assume default of 1
    if len ( datacube_copy ) / colXPR > rowMAX :
        numberofmultiplots = math.ceil ( len ( datacube_copy ) / colXPR / rowMAX )     
    print ("numberofmultiplots    : ", numberofmultiplots, ", note: There will need to be this many multiplots")    
    
#    import matplotlib.pyplot as plt     
#    plt.figure ( figsize = ( multiplotwidth, multiplotheight ) ) # first is width, second is height
#    plt.subplots_adjust(hspace=0.1)
#    for n, frame in enumerate(datacube_copy):
#        ax=plt.subplot(numberofrows,numberofcolumns,n+1)
#        plt.imshow(frame)
#        frame.plot(ax=ax)
        
# Right here, do some math using insight into matplotlib's natural maximum size limits
# If the desired sidelength, combined with the extant size of the datacube, results 
# in a proposed final array that exceeds the natural limit, then, 
# break off a datacubeslice of the datacube_copy such that it falls with that size limit
# and do that for each subsequent remainder of the total extant datacube_copy,
# until such time as you have produced some number of multicell images
# that cover the entire datacube_copy.
# There may be some elegance in dividing the size of the extant datacube_copy combination with sidelenth
# by the natural size limit, so as to find a way to break up the datacube_copy
# into unobjectionable equal size groupings. That may only be for preciousness' sake, I don't know.
# So I think there can be a jj loop over this ii loop. Or, there will be n individual ii loop inside each run of the jj loop, and, MOST IMPORTANTLY, the ii will start with a handoff index value from the prior jj loop
# So even if ii starts at 0 for each cycle in jj, the display shows ii + FUDGEFIDUCIAL
# so that the User only sees the effect of a continuous ii
# So this is slicing off datacubeslices of a larger extant array
    print()
    iifid = 0
    if zoom > datacube[0].shape[1] or zoom > datacube[0].shape[0] : zoom = 0
    import matplotlib.pyplot as plt
         
    for jj in range ( numberofmultiplots ) :
        plt.figure ( figsize = ( multiplotwidth, multiplotheight ) ) # first is width, second is height
        plt.subplots_adjust(hspace=0.1)
    
        print()    
        print("Index jj                   : ", jj, "out of a total N =", numberofmultiplots)
        if   jj <  numberofmultiplots - 1 :
            datacubeslice = datacube_copy [ iifid*jj : iifid*jj + rowXPR * colXPR ]
        elif jj == numberofmultiplots - 1 :
            datacubeslice = datacube_copy [ iifid*jj : None ]
        print("iifid*jj                   : ", iifid*jj, "starting index")
        print("iifid*jj + rowXPR * colXPR : ", iifid*jj + rowXPR * colXPR, "ending index")
        print("len(datacubeslice)         : ", len(datacubeslice))
    #    for input_SCI in datacube_copy :
#        for ii, input_SCI in enumerate ( datacube_copy ) :
        for ii, input_SCI in enumerate ( datacubeslice ) :
    #        print(datacubeFNs[ii][0],datacubeFNs[ii][1])
#            print()
#            print("jj                     : ", jj)
#            print("sliceii                : ", ii)
#            print("iifid*jj               : ", iifid*jj)
#            print("datacubeii             : ", ii+iifid*jj) 
            print ( 
#                "{:>8.4f}".format(value)
                  "{:>6}".format(            ii+iifid*jj)
                , ""
                ,                datacubeFNs[ii+iifid*jj][0]
                , "{:>3}".format(datacubeFNs[ii+iifid*jj][1])
                , ","
                , end=""
            )
            if (ii+iifid*jj > 0) and ((ii+iifid*jj+1) % 5 == 0) : print()
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
            #print()
            if 1: 
    #            import matplotlib.pyplot as plt                
    #            plt.figure      ( figsize=[sidelength,sidelength] )
#                ax=plt.subplot(numberofrows,numberofcolumns,ii+iifid+1)
                subplotindex = ii + 1
                #print(",\t subplotindex : ", subplotindex)
                ax = plt.subplot ( rowXPR, colXPR, subplotindex )
                # the 1 here ^^^ has to do with indexing in matplotlib
                # I think indexing in matplotlib starts at 1
                plt.imshow      ( input_SCI ) # , cmap='gray'    
                plt.xlim        ( [ zoom, W - zoom ] ) 
                plt.ylim        ( [ zoom, H - zoom ] )            
                #plt.title       ( "self._input " + self._filenames[ii] + ", " + str(ii) )
    #            if datacubeFNs :
    #            plt.title       ( "CD,presently " + datacubeFNs[ii] + ", " + str(ii) )
                plt.title       ( datacubeFNs[ii+iifid*jj][0] + " ImageHDU index: " + str(datacubeFNs[ii+iifid*jj][1]) + ". (Datacube index: " + str(ii+iifid*jj) + ".)")
    #            else :
    #                plt.title       ( "CD,presently, " + str(ii) )
            
    #        ii = ii + 1
        iifid = ii + 1
        print()
        print("ii    at end of jj          : ", ii)
        print("iifid at end of jj          : ", iifid, "next starting point, for the next ii")
#    plotName = fnprefix + "-2.png"
#    plt.savefig ( plotName , dpi = 150 )
        plotName = fnprefix + tag + "dcs" + str(jj) + ".jpg" # data cube slice
#        plt.savefig ( plotName , dpi = 30 ) # dpi = 15 works, but is not useful
#        plt.savefig ( plotName , dpi = 35 ) # dpi = 30 works, but I cannot see the labels; 40 goes blue        
        plt.savefig ( plotName , dpi = 36 ) # 35 just barely allows you to discern label
#        plt.savefig ( plotName )        
        
        
        
        
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
            plt.figure      ( figsize=[5,5] ) # [30,30]
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
#    if 0 :
#        maskFR[mvc][mhc]=np.nan # fiducial marker
            
    # Wedge A
    if 1 : 
        wedgestartX = mhc + int ( wedgeshiftI )
        wedgestartY = mvc
        wedgeX      = wedgestartX
        wedgeY      = wedgestartY
#        if 0 : maskFR[wedgestartY][wedgestartX]=np.nan # wedge fiducial marker
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
#        if 0 : maskFR[wedgestartY][wedgestartX]=np.nan # wedge fiducial marker
    
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
#        if 0 : maskFR[legstartY][legstartX+S]=np.nan # legs fiducial marker
    
    # NEVER DELETE DIAG CENTER REGISTER / FIDUCIAL MARKER
#    if 0 :
#        maskFR[mvc][mhc]=np.nan # fiducial marker
#    
#    if 0 :
#        import matplotlib.pyplot as plt     
#        plt.figure      ( figsize=[5,5] ) #[30,30]
#        plt.imshow      ( maskFR )
#        plt.xlim        ( [ 0, maskFR.shape[1] - 0] )
#        plt.ylim        ( [ 0, maskFR.shape[0] - 0] )
##        assert False
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
# PREMASK    
    premask_L  = []   # pre-mask target star SCI frame List
    premaskFNL = []   # pre-mask File Name List, which contains FITS filename and frame index 
    maskFR  = None # mask Frame
    
    print("cpuCount           : ",cpuCount)
    print("useParallelB       : ",useParallelB)
    
    



    # AllFNL is a list of lists. 
    # The first list contains target FITS files, the second contains reference FITS files.
    # Loop through the list of lists
    # Index [0] accesses the list of all target FITS files
    # Index [1] accesses the list of all reference FITS files
    for kk in range ( len ( allFNL ) ) :
        # if 0 : print("\nkk                 : ", kk)
        # TODO: I can change all kk to tr if necessary
        torI = kk # target or reference Index (or, Integer, capitalized)
        FNL = allFNL[kk] # Filename List
        #print("FNL              : ", FNL)
        
        # TODO: DIAG AND DEVEL ONLY
        if 0:
            if kk  == 1 : 
                print("We are ignoring reference files / reference frames, in diagnostic mode")
                continue
            

       
        
        
        # We are now at one of the lists contained in the list of lists
        # This will be either the list of target FITS files, or the list of reference FITS files
        # Loop through all of the FITS files in this list  
        for jj in range ( len ( allFNL[kk] ) ):
            # if 0 : print("\njj                 : ", jj)
        
            # (If stellar point was ndshifted, the wedge was ndshifted...)
            # These values do not change after the first frame, so, 
            # they can be discovered before the first frame and remain good for all frames
            WNAXIS1I = (fits.open(allFNL[kk][jj]))[1].header['NAXIS1'] # subarray width
            HNAXIS2I = (fits.open(allFNL[kk][jj]))[1].header['NAXIS2'] # subarray height
            CCRPIX1F = (fits.open(allFNL[kk][jj]))[1].header['CRPIX1'] # stellar point column
            RCRPIX2F = (fits.open(allFNL[kk][jj]))[1].header['CRPIX2'] # stellar point row
            CCRPIX1I = int(CCRPIX1F) # column stis intrument stellar point Integer
            RCRPIX2I = int(RCRPIX2F) #    row stis intrument stellar point Integer
            # if 0 : print("WNAXIS1I            : ", WNAXIS1I)
            # if 0 : print("HNAXIS2I            : ", HNAXIS2I)   
            # if 0 : print("CCRPIX1F            : ", CCRPIX1F)    
            # if 0 : print("RCRPIX2F            : ", RCRPIX2F)
            # if 0 : print("CCRPIX1I            : ", CCRPIX1I)    
            # if 0 : print("RCRPIX2I            : ", RCRPIX2I)
            PROPAPER = (fits.open(allFNL[kk][jj]))[0].header['PROPAPER'] # SCIENCE INSTRUMENT CONFIGURATION
            # if 0 : print("PROPAPER            : ", PROPAPER)
            TARGNAME = (fits.open(allFNL[kk][jj]))[0].header['TARGNAME'] # PROPOSER's TARGET NAME
            # if 0 : print("TARGNAME            : ", TARGNAME)
            PROPOSID = (fits.open(allFNL[kk][jj]))[0].header['PROPOSID'] # PROPOSER's TARGET NAME
            # if 0 : print("PROPOSID            : ", PROPOSID)
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
            # if 0 : print("rtfn               : ", rtfn)
#            print(rtfn, "", end="")            
            if "BAR" in PROPAPER : 
                print("PROPAPER has BAR")
                continue
#                assert False
            if "50CORON" in PROPAPER : 
                print("PROPAPER has 50CORON")
                continue


            else : 
                PROPAPER_2 = PROPAPER.replace("WEDGE","")
                if   "A" in PROPAPER_2 : wedgeletter = "A"
                elif "B" in PROPAPER_2 : 
                    wedgeletter = "B" # Just leave for expansion
                    continue
                wedgearcsecF = float ( PROPAPER_2.replace ( wedgeletter, "" ) )
                wedgepixelsF = wedgearcsecF / PLATESCALE            
            
#                print("PROPAPER_2          : ", PROPAPER_2)
#                print("wedgeletter         : ", wedgeletter)            
#                print("wedgearcsecF        : ", wedgearcsecF)
#                print("wedgepixelsF        : ", wedgepixelsF)   
         

                        
            if maskB :
                # Start of getting values for mask creation 
                SCIshape = ( HNAXIS2I, WNAXIS1I )                 
                stisPos  = ( CCRPIX1F, RCRPIX2F )
                #if 1 : print("native stisPos     : ",stisPos)
                if wedgeletter == "A" and wedgearcsecF == 1.0 and HNAXIS2I ==   80 : 
                    stisPos = ( CCRPIX1F,  40 )
                    # Make the mask for the wedge       ___ arcseconds wide
                    # Make the mask for the spider legs ___ arcseconds wide (horizontally)
                    # Make the mask for the wedge       shift to the left by __ pixels 
                    # Make the mask for the spider legs shift to the left by __ pixels
                    # Leave alone / duplicate the vertical shift for the spider legs
                    maskL = ( 0.8, 0.3, -2, -2, maskL[4]) # override wedge width and position
                #if 1 : print("magic  stisPos     : ",stisPos)     
                
                SCIC2Dshape = ( 110 , 213 ) # Default shape for nearly all
                #if 1 : print("native SCIC2Dshape : ",SCIC2Dshape)
                if wedgeletter == "A" and wedgearcsecF == 1.0 and HNAXIS2I ==  80 : 
                    SCIC2Dshape = (  80 , 213 ) # override the only size < 110   
                #if 1 : print("magic  SCIC2Dshape : ",SCIC2Dshape)
                   
                voffstis = SCIshape[0]/2 - stisPos[1] + 0 # vertical offset 
                hoffstis = SCIshape[1]/2 - stisPos[0] + 2 # horizontal offset
                #if 1 : print("native voffstis    : ",voffstis)
                if wedgeletter == "A" and wedgearcsecF == 1.0 and HNAXIS2I ==  316 : 
                    voffstis = 0
                    maskL = (0.9, 0.8, -2, -1, maskL[4])
                if wedgeletter == "A" and wedgearcsecF == 1.0 and HNAXIS2I ==  512 : 
                    voffstis = 0
                    maskL    = [1.3, 0.7, -1, 0, 0]
                if wedgeletter == "A" and wedgearcsecF == 1.0 and HNAXIS2I == 1024 : 
                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 1.8 :
#                    maskL = (1.8, 0.6, -1, -1, 1)
#                if wedgeletter == "A" and wedgearcsecF == 1.8 and HNAXIS2I ==  512 :
#                    maskL = (1.8, 0.6, -1, -1, 1)
#                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 1.8 and HNAXIS2I == 1024 :
#                    maskL = (2.2, 0.8, 0, 0, 1)
#                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 2.0 and HNAXIS2I ==  512 :
#                    maskL = (2.2, 0.8, 0, 0, 0)
#                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 2.0 and HNAXIS2I == 1024 :
#                    maskL = (2.2, 0.8, 0, 0, 0)
#                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 2.5 and HNAXIS2I == 1024 :
#                    maskL = (2.7, 0.8, 0, 0, 0)
#                    voffstis = 0
#                if wedgeletter == "A" and wedgearcsecF == 2.8 and HNAXIS2I == 1024 :
#                    maskL = (2.9, 0.8, 0, 0, 0)
#                    voffstis = 0
                                    
                #if 1 : print("magic  voffstis    : ",voffstis)
                if 0 :
                    print("SCIshape           : ", SCIshape)
                    print("SCIC2Dshape        : ", SCIC2Dshape)   
                    print("stisPos            : ", stisPos)    
                    print("voffstis           : ", voffstis)
                    print("hoffstis           : ", hoffstis)    
                    print()
                # End of getting values for mask creation

                if pyklipB :
                    #print("SCIC2Dshape, voffstis, hoffstis", SCIC2Dshape, voffstis, hoffstis)
                    maskFR = createmask (maskL, pyklipB, nmfB, SCIC2Dshape, voffstis, hoffstis) 
                if nmfB : 
                    # For NMF, make ONE mask that is as universal to all nmf-bound frames as can be
                    # (NMF accommodates one mask, passed in on the side.)
                    maskFR = createmask (maskL, pyklipB, nmfB, (239,239), voffstis, hoffstis, SCIC2Dshape)         
        
        
        
        
            parallelTL = [] # parallel Tuple List, a List of Tuples that are going to parallel
#            #print("kk jj            : ", kk, jj)
#            dnfn = allFNL[kk][jj]
#            # dnfn ("DNFN") = 'Directory Name and File Name',
#            # where Directory is at local level to this script.
#            # decapitalized because of how frequently it occurs
#            #print("dnfn             : ", dnfn)
#            HDUL            = fits.open ( dnfn )
#            FN              = os.path.basename ( dnfn )
#            #print("FN               : ", FN)
#            #directoryPath   = os.path.dirname ( dnfn ) # TODO: Not needed, now.
#            #print("directoryPath    : ", directoryPath)# TODO: Not needed, now.
#            split           = os.path.splitext ( os.path.basename ( dnfn ) )
#            token_          = split[0].split('_')
#            rtfn            = token_[0] # Root Filename, de-capitalized for frequency
#            #print("rtfn             : ", rtfn, end="")
#            print(rtfn, "", end="")
#            print()
            SUBARRAY             = bool ( HDUL [ 0 ].header[ 'SUBARRAY' ] )
            POSTARG1             = HDUL [ 0 ].header[ 'POSTARG1' ]  
            POSTARG2             = HDUL [ 0 ].header[ 'POSTARG2' ]  
#            PROPAPER             = HDUL [ 0 ].header[ 'PROPAPER' ]  
            CENTERA1             = HDUL [ 0 ].header[ 'CENTERA1' ]  
            CENTERA2             = HDUL [ 0 ].header[ 'CENTERA2' ]  
            SIZAXIS1             = HDUL [ 0 ].header[ 'SIZAXIS1' ]  # 1060 for all STIS
            SIZAXIS2             = HDUL [ 0 ].header[ 'SIZAXIS2' ]  # 80, 110, 316, etc
            CCDGAIN              = HDUL [ 0 ].header[ 'CCDGAIN'  ]
            LTV1                 = HDUL [ 1 ].header[ 'LTV1'     ]  
            LTV2                 = HDUL [ 1 ].header[ 'LTV2'     ]  
            FRH                  = HDUL [ 1 ].data.shape[0]         
            FRW                  = HDUL [ 1 ].data.shape[1]
            POSTARG1_pixels      = POSTARG1    / PLATESCALE
            POSTARG2_pixels      = POSTARG2    / PLATESCALE        
            CRPIX1mLTV1          = CCRPIX1F    - LTV1
            CRPIX2mLTV2          = RCRPIX2F    - LTV2
            xActual              = CRPIX1mLTV1 + POSTARG1_pixels
            yActual              = CRPIX2mLTV2 + POSTARG2_pixels
            CENTERA1mxActual     = CENTERA1    - xActual
            CENTERA2myActual     = CENTERA2    - yActual
            pixelsFromLeft       = math.ceil ( xActual ) # which half left or right?
            pixelsFromBottom     = math.ceil ( yActual ) # which half top or bottom? 
            
            ## if 0 : print("native RCRPIX2I",RCRPIX2I)
            if wedgeletter == "A" and HNAXIS2I == 80 : 
                RCRPIX2I = 41
                RCRPIX2F = 41.0
            if wedgeletter == "A" and HNAXIS2I == 316 : 
                RCRPIX2I = 69
                RCRPIX2F = 69.0
            ## if 0 : print("magic  RCRPIX2I",RCRPIX2I) 

            # Get the mask's wedge thickness (which depends on the file header)
#            PROPAPER_2 = PROPAPER.replace("WEDGE","")
#            if   "A" in PROPAPER_2 : 
#                wedgeletter = "A"
#            elif "B" in PROPAPER_2 : 
#                wedgeletter = "B" # Just leave for expansion
#            wedgearcsecF = float ( PROPAPER_2.replace ( wedgeletter, "" ) )
#            wedgepixelsF = wedgearcsecF / PLATESCALE
        
            # Get the wcs block to calculate the position angle
            warnings.filterwarnings("ignore",category=wcs.FITSFixedWarning)
            wcsO      = wcs.WCS ( HDUL [ 1 ].header ) # ImageHDU only, not PrimaryHDU
            rot_angle = np.rad2deg ( math.atan2 ( wcsO.wcs.cd[1][0], wcsO.wcs.cd[0][0] ) )
            wcspa     = 180 * np.sign ( rot_angle ) - rot_angle

            # Get the STIS header's star position in relation to subframe
            # (As distinguished from the star position in relation to the CCD.)
            stisPos = (CCRPIX1F, RCRPIX2F) # horz center in x, vert center in y
            # This option of radcPos needs to remain in place here in case
            # we add stored radonCenters to the headers
            # to be read back in later, which will preempt needing to run
            # RadonCenter more than once per frame
            # But that should not happen until there is a great deal fo confidence 
            # in exception handling 
            # Writing in a WRONG radonCenter to the header creates more problems
            # than running radonCenter fresh each time
            radcPos = stisPos # Default to STIS header ( CRPIX1, CRPIX2 )
            #print("native stisPos    : ",stisPos)
            #print("native radcPos     : ",radcPos)
            if wedgeletter == "A" and HNAXIS2I ==  80 : 
                stisPos = ( CCRPIX1F, 41 )
                radcPos = stisPos
            if wedgeletter == "A" and HNAXIS2I == 316 : 
                stisPos = ( CCRPIX1F, 69 )
                radcPos = stisPos
            #print("magic  stisPos    : ",stisPos)            
            #print("magic  radcPos     : ",radcPos)      

            # Get the mode of EXPTIME, prior to taking data from frames
            exptimeL=[]

            
            for ii in range ( 1, len ( HDUL ), 3 ) : # SCI only
                try:
                    exptimeL.append ( HDUL [ ii ].header[ 'EXPTIME' ] )
                    #print("good:"dnfn )
                except Exception as err:
                    log.debug(err)
                    log.debug("err:")
                    log.debug(dnfn )

                    continue
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
            
            # Now we are at the loop that goes over all of the ImageHDUs in any one particular FITS file
            for ii in range ( startatindex, stopbeforeindex, 3 ) :
#                if 0 :
#                    #print("kk, jj, ii, nth  : ", kk, jj, ii, int((ii+2)/3), "** This starts a new frame **")
#                    print(ii,"", end="" )
                    
                if (rtfn,ii) in excepL :
                    log.info("Omitting this frame which is listed in the manual exception list ", rtfn, ii )
                    continue                     

                EXPTIME = HDUL [ ii ].header[ 'EXPTIME'     ]
                if EXPTIME > exptimeMedian :
                    log.info("\n {EXPTIME>exptimeMedian;dropping frame ", ii, "}") 
                    continue

# REQUEST FOR CENTERS FROM HEADER GOES HERE (removed for now)
                
                SCIdataFR = np.array ( HDUL [ ii + 0 ] .data ) # SCI.data
                ERRdataFR = np.array ( HDUL [ ii + 1 ] .data ) # ERR.data
                DQ_dataFR = np.array ( HDUL [ ii + 2 ] .data ) #  DQ.data
                     

                parallelT = (
                    copy.deepcopy(SCIdataFR) , #eventually need to copy for serial, not para 
                    copy.deepcopy(ERRdataFR) ,
                    copy.deepcopy(DQ_dataFR) ,
                    rtfn      , 
                    ii        ,
                    wcspa     ,
                    RCRPIX2F  ,
                    CCRPIX1F  ,
                    radcB     ,
                    HNAXIS2I  ,
                    EXPTIME   ,
                    radcPos   ,
                    maskB     ,
                    maskL     ,
                    pyklipB   ,
                    nmfB      ,
                    CCDGAIN
                )
                parallelTL.append(parallelT)
                

                # This section will run the pipeline in Serial,
                # if useParallelB has been set to False at the top. 
                if not useParallelB : # 1 for serial, 0 for parallel
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
                                    DQ_dataFR ,
                                    rjy       ,
                                    cix
                                )
                    # if 0 : print("\nS pixel check 1    : ", SCIdataFR[120][140])
#                    if 1 :
#                        if kk == 0 and modepix < 1 : # For the case of V-AU-Mic
#                            SCIdataFR = SCIdataFR / abs(modepix)
#                            ERRdataFR = ERRdataFR / abs(modepix)

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
                            vdist  = rjy - RCRPIX2I
                            hdist  = cix - CCRPIX1I
                            radius = math.sqrt ( pow ( vdist, 2 ) + pow ( hdist, 2 ) )
                            SCIdataFR[rjy][cix] = SCIdataFR[rjy][cix] * pow ( radius, plce )
                    # if 0 : print("S pixel check 2    : ", SCIdataFR[120][140])

                    """
                    Bin Ren, Laurent Pueyo
                    "Post-processing of the HST STIS coronagraphic observations" (2017)
                    Page 3 / 14
                    "We aligned the centers of the stars using Radon Transform-based
                    center determination method described in Ref. 54 after the above-mentioned
                    median filtering. We took the SCI extension data, start center searching from
                    the instrumental center given by its CRPIX1 and CRPIX2 header values; to make
                    use of the 45 degree and 135 degree major diffraction spikes (Fig. 3) for the
                    alignment of the STIS images"
                    """
                    # Get radonCenter's determination of the stellar point
#                    radcPos = (0.0,0.0)
                    if radcB : # radonCenter Boolean
                        radcPos = radonCenter.searchCenter ( 
                            SCIdataFR         ,
                            CCRPIX1I             , # x ; column stellar point Integer
                            RCRPIX2I             , # y ; row    stellar point Integer
                            size_window = math.floor ( HNAXIS2I / 2 ),
                            size_cost   = 7  ,
                            theta       = [45, 135]#, 225, 315]
                        )                    
                        # if 0 : print("S radcPos          : (", rtfn, ii, ")", f2f2(radcPos))

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
                    if 1 :
                        SCIdataFR = SCIdataFR / EXPTIME
                        ERRdataFR = ERRdataFR / EXPTIME
                    # if 0 : print("S pixel check 3    : ", SCIdataFR[120][140]) # Cannot do this for 80-high
                    # if 0 : print("S C")
                    checkfornansFR(SCIdataFR)
                    checkforzerorowsFR(SCIdataFR)
                    # Get the amount of shift required to center the subarray onto the star 
                    voff = SCIdataFR.shape[0]/2 - radcPos[1] # vertical offset 
                    hoff = SCIdataFR.shape[1]/2 - radcPos[0] # horizontal offset
                    # if 0 : print("S native voff      : ",voff)
                    if SCIdataFR.shape[0] ==  80 : voff = 40.0 - radcPos[1]    
                    if SCIdataFR.shape[0] == 316 : voff = 69.0 - radcPos[1]
                    # if 0 : print("S magic  voff      : ",voff) 
                    
                    shiftedSCIdataFR = scipy.ndimage.shift ( SCIdataFR, np.array ( [ voff, hoff ] ) )
                    shiftedERRdataFR = scipy.ndimage.shift ( ERRdataFR, np.array ( [ voff, hoff ] ) )
                    # if 0 : print("S pixel check 4    : ", shiftedSCIdataFR[120][140])
                    if 1:
                        import matplotlib.pyplot as plt
                        plt.figure      ( figsize=[5,5] )
                        plt.imshow      ( shiftedSCIdataFR )
                        plt.xlim        ( [ 0, shiftedSCIdataFR.shape[1]] )
                        plt.ylim        ( [ 0, shiftedSCIdataFR.shape[0]] )
                        plt.title       ("S shiftedSCIdataFR")    
                    
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
                    # if 0 : print("S pixel check 5    : ", shiftedSCIdataFR[120][140])                    
                    if SCIdataFR.shape[0] == 316 :
                        SCIC2D = Cutout2D (
                            shiftedSCIdataFR ,
                            position = ( shiftedSCIdataFR.shape[1]/2, 69 ),
                            size     = (lh,lw) ,
                            wcs      = None # TODO add wcs to this
                        )
                    # if 0 : print("S pixel check 6    : ", shiftedSCIdataFR[120][140]) 
                    # if 0 : print("S D")
                    #checkforzerorowsFR(SCIC2D) # TypeError: 'Cutout2D' object is not subscriptable
                    if 1:
                        import matplotlib.pyplot as plt
                        plt.figure      ( figsize=[5,5] ) # [45,45]
                        plt.imshow      ( SCIC2D.data )
                        plt.xlim        ( [ -5, SCIC2D.shape[1]+5] )
                        plt.ylim        ( [ -5, SCIC2D.shape[0]+5] )
                        plt.title       ("S SCIC2D")                   
                        
                    ERRC2D = Cutout2D (
                        shiftedERRdataFR ,
                        position = ( shiftedERRdataFR.shape[1]/2 , shiftedERRdataFR.shape[0]/2 ),
                        size     = (lh,lw) ,
                        wcs      = None # TODO add wcs to this
                    )
                    if ERRdataFR.shape[0] == 316 :
                        ERRC2D = Cutout2D (
                            shiftedERRdataFR ,
                            position = ( shiftedSCIdataFR.shape[1]/2, 69 ),
                            size     = (lh,lw) ,
                            wcs      = None # TODO add wcs to this
                        )                    
                    # if 0 : print("S ERRC2D.shape     : (", rtfn, ii, ")", ERRC2D.shape)
                    # if 0 : print()


# PREMASK S                   
                    if 1 :
                        premask = copy.deepcopy ( SCIC2D.data )
                        premaskFNL.append((rtfn,ii))
                    
                    # Apply maskFR if (the mask boolean says to) AND (this is not for NMF)
                    if pyklipB and maskB and not nmfB :
                        SCIC2D.data [ maskFR == 0 ] = np.nan
                        ERRC2D.data [ maskFR == 0 ] = np.nan
                        if 1 :
                            import matplotlib.pyplot as plt
                            plt.rcParams.update({'figure.max_open_warning': 0})
                            plt.figure      ( figsize=[5,5] ) # [20,20]
                            plt.imshow      ( SCIC2D.data )
                            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
                            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
                            plt.title       ( "S" + rtfn + ", " + str ( ii ) + ", " + str ( (ii+2)/3 ) )
                    
                    # If Pyklip, Convert saturated pixels to np.nan, based on gain
                    # NMF cannot digest nans, so cap the value
                    if 1 : 
                        if CCDGAIN == 4 :
                            #pixel threshold for nan = 130000 / 4 = 32500
                            if pyklipB :
                                SCIC2D.data [ SCIC2D.data > 32500 ] = np.nan
#                            if nmfB :
#                                ERRC2D.data [ SCIC2D.data > 32500 ] = 100 # not ideal
#                                SCIC2D.data [ SCIC2D.data > 32500 ] = 10000 # not ideal
                        if CCDGAIN == 1 :
                            #pixel threshold for nan =              33000
                            if pyklipB : 
                                SCIC2D.data [ SCIC2D.data > 33000 ] = np.nan
#                            if nmfB : 
#                                ERRC2D.data [ SCIC2D.data > 33000 ] = 100 # not ideal                                
#                                SCIC2D.data [ SCIC2D.data > 33000 ] = 10000 # not ideal

                    """
                    Bin Ren, Laurent Pueyo
                    "Post-processing of the HST STIS coronagraphic observations" (2017)
                    Page 5 / 14                
                    "In order to reduce the color-mismatch which creates unrealistic
                    halos (e.g., Fig. 8), for each target readout, we normalized itself
                    and all the PSF readouts by first applying an algorithmic mask
                    to block the physical wedges and the primary di raction spikes,
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
                            plt.title       ( "S before sub of mean")                
                        meanSCIC2Ddata = np.nanmean(SCIC2D.data)
                        # if 0 : print("S meanSCIC2Ddata : ", meanSCIC2Ddata)
                        meanERRC2Ddata = np.nanmean(ERRC2D.data)
                        SCIC2D.data = SCIC2D.data - meanSCIC2Ddata
                        if 0 :
                            import matplotlib.pyplot as plt
                            plt.figure      ( figsize=[5,5] )
                            plt.imshow      ( SCIC2D.data )
                            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
                            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
                            plt.title       ( "S after sub of mean")
                        ERRC2D.data = ERRC2D.data - meanERRC2Ddata
                        stddevSCIC2D = np.nanstd(SCIC2D.data)
                        # if 0 : print("S stddevSCIC2D : ", stddevSCIC2D)
                        stddevERRC2D = np.nanstd(ERRC2D.data)
                        SCIC2D.data = SCIC2D.data / stddevSCIC2D
                        if 0 :
                            import matplotlib.pyplot as plt
                            plt.figure      ( figsize=[5,5] )
                            plt.imshow      ( SCIC2D.data )
                            plt.xlim        ( [ 0, SCIC2D.shape[1]] )
                            plt.ylim        ( [ 0, SCIC2D.shape[0]] )
                            plt.title       ( "S after div by std")                                    
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
                    # if 0 : print("S pixel check -3    : ", SCIcanvas[120][140])
                    if pyklipB and not nmfB : SCIcanvas[:] = np.nan   # Pyklip requires nans  background
                    SCIcanvas [ aBR : aTR , aLC : aRC ] = SCIC2D.data [ bb : - bb , bb : - bb ]
                    # if 0 : print("S pixel check -2    : ", SCIcanvas[120][140])
                    ERRcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
                    if pyklipB and not nmfB : ERRcanvas[:] = np.nan   # Pyklip requires nans  background
                    ERRcanvas [ aBR : aTR , aLC : aRC ] = ERRC2D.data [ bb : - bb , bb : - bb ]
#                    if 0 :
#                        import matplotlib.pyplot as plt     
#                        plt.figure      ( figsize=[3,3] )
#                        plt.imshow      ( SCIcanvas.data )
#                        plt.xlim        ( [ 0, SCIcanvas.shape[1]] )
#                        plt.ylim        ( [ 0, SCIcanvas.shape[0]] )                       
#                    if 0 :
#                        center = radcPos # TODO: Check if this is moot after ndshift
                    center = (int(hypotenuse/2),int(hypotenuse/2))
# PREMASK S                   
                    if 1 : 
                        premaskcanvas = np.zeros (( hypotenuse, hypotenuse )) # NMF    requires zeros background
                        if pyklipB and not nmfB : premaskcanvas[:] = np.nan   # Pyklip requires nans  background
                        premaskcanvas [ aBR : aTR , aLC : aRC ] = premask [ bb : - bb , bb : - bb ]
#################Anything above this line should be serial                    
#                
                # At the end of this recipe, you need to have:
                # SCIcanvas
                # ERRcanvas
                # wcspa
                # center
                # rtfn
                # Put these into a returntuple
                if useParallelB: # 1 : # 0 for serial, 1 for parallel
                    SCIcanvas = None
                    ERRcanvas = None
                    center    = None
                
                if not useParallelB : #0 : # 1 for serial, 0 for parallel
                    torL   .append(torI) # torI = kk. 'kk' maintains top level dimension.
                    #if 0 : print("S pixel check -1    : ", SCIcanvas[120][140])                    
                    if kk == 0 :
                        trgSCIL.append(SCIcanvas)
                        trgERRL.append(ERRcanvas)
# PREMASK S   
                        if 1 :
                            premask_L.append(premaskcanvas)
                    if kk == 1 :
                        refSCIL.append(SCIcanvas)
                        refERRL.append(ERRcanvas)
# PREMASK S                   
                        if 1 : 
                            premask_L.append(premaskcanvas)
                    pasL   .append(wcspa)
                    cenL   .append(center)
                    FRFNL  .append(rtfn)
            
            HDUL.close()
            if useParallelB : # 1 : # 0 for serial, 1 for parallel
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
                #if 0 : print("len(parallelProcessResult) : ", len(parallelProcessResult))
            if useParallelB : # 1 : # 0 for serial, 1 for parallel
                for ii in range ( len ( parallelProcessResult ) ) :
                    returnT = parallelProcessResult[ii]
                    #print("len(parallelProcessResult[ii]) : ", len(parallelProcessResult[ii]))
                    #print("len(returnT) : ", len(returnT))
                    #print("returnT[2] wcspa : ", returnT[2])
                    SCIcanvas = returnT [ 0 ] 
                    ERRcanvas = returnT [ 1 ] 
                    wcspa     = returnT [ 2 ]
                    center    = returnT [ 3 ]
                    rtfn      = returnT [ 4 ]
                    if len ( returnT ) == 7 :
# PREMASK P                    
                        premaskcanvas = returnT [ 5 ]
                        rtfnii        = returnT [ 6 ]  
                    torL   .append(torI) # torI = kk. 'kk' maintains top level dimension.
                    #if 0 : print("P pixel check -1    : ", SCIcanvas[120][140])                     
                    if kk == 0 :
                        trgSCIL.append(SCIcanvas)
                        trgERRL.append(ERRcanvas)
# PREMASK P  
                        if 1 :
                            premask_L .append(premaskcanvas)
                            premaskFNL.append((rtfn,rtfnii))
                        
                    if kk == 1 :
                        refSCIL.append(SCIcanvas)
                        refERRL.append(ERRcanvas)
# PREMASK P                    
                        if 1 : 
                            premask_L .append(premaskcanvas)
                            premaskFNL.append((rtfn,rtfnii))
                        
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
# PREMASK    
    premask_RA = np.array(premask_L)
    log.debug("torRA   .shape     : ", torRA   .shape)
    log.debug("trgSCIRA.shape     : ", trgSCIRA.shape)
    log.debug("refSCIRA.shape     : ", refSCIRA.shape)
    log.debug("pasRA   .shape     : ", pasRA   .shape)
    log.debug("cenRA   .shape     : ", cenRA   .shape)
# PREMASK    
    log.debug("premask_RA   .shape     : ", premask_RA   .shape)
    
    # DIAG , DEVEL , TESTING : will be removed
#    if nmfB : 
#        checkfornansDC (trgSCIRA)
#        checkfornansDC (refSCIRA)
#        checkfornansDC (trgERRRA)
#        checkfornansDC (refERRRA)
#        checkforzerorowsDC (trgSCIRA)
#        checkforzerorowsDC (refSCIRA)
#        checkforzerorowsDC (trgERRRA)
#        checkforzerorowsDC (refERRRA)
     
    if 0 :               
        return torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR
    if 1 :
        return torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR, premask_RA, premaskFNL









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
        
        log.debug("trgFNL             : ", trgFNL)
        log.debug("refFNL             : ", refFNL)
        log.debug("maskL              : ", maskL)
        log.debug("maskB              : ", maskB)
        log.debug("radcB              : ", radcB)
        log.debug("SFR                : ", SFR)
        log.debug("NFR                : ", NFR)
        
#        if 0 :
#            torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR = main_function(
#                    trgFNL  ,
#                    refFNL  ,
#                    maskL   ,
#                    maskB   ,
#                    radcB   ,
#                    SFR     ,
#                    NFR     ,
#                    excepL  , 
#                    pyklipB ,
#                    nmfB
#                ) 

        if 1 :
            torRA, trgSCIRA, trgERRRA, refSCIRA, refERRRA, pasRA, cenRA, FRFNL, maskFR, premask_RA, premaskFNL = main_function(
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
#        if 0 :
#            input_SCI = trgSCIRA
#            input_ERR = trgERRRA

        
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
        if 1 :
            log.debug("torRA              :  [")
            for tr in torRA : log.debug(str(tr)+", ") # SCIcanvas 
            log.debug("]")                    
            log.debug("input_SCI          :  [")
            for fr in input_SCI : log.debug(str(fr[120][140])+", " ) # SCIcanvas 
            log.debug("]")    
            log.debug("input_ERR          :  [")
            for fr in input_ERR : log.debug(str(fr[120][140])+ ", ") # SCIcanvas 
            log.debug("]")    
            log.debug("centers            :  [" )
            for cen in centers   : log.debug("("+str(f2f2(cen))+  ")")
            log.debug("]")
            log.debug("parangs            :  [")
            for pa in parangs    : log.debug(str(f2(pa)))
            log.debug("]")
            log.debug("filenames          : :"+ str( filenames))



        self._torRA  = torRA
        self._maskFR = maskFR
# PREMASK                    
        if 1 :
            self._inputpremask = premask_RA        
            self._premaskFNL   = premaskFNL
        
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

