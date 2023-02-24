#!/bin/bash
#
# Requires bash version >= 4
# 
# The script uses the command line tool 'curl' for querying
# the MAST Download service for public and protected data. 
#

type -P curl >&/dev/null || { echo "This script requires curl. Exiting." >&2; exit 1; }



# Check for existing Download Folder
# prompt user for overwrite, if found
let EXTENSION=0
FOLDER=MAST_2023-01-20T1647
DOWNLOAD_FOLDER=$FOLDER
if [ -d $DOWNLOAD_FOLDER ]
then
  echo -n "Download folder ${DOWNLOAD_FOLDER} found, (C)ontinue writing to existing folder or use (N)ew folder? [N]> "
  read -n1 ans
  if [ "$ans" = "c" -o "$ans" = "C" ]
  then
    echo ""
    echo "Downloading to existing folder: ${DOWNLOAD_FOLDER}"
    CONT="-C -"
  else
    while [ -d $DOWNLOAD_FOLDER ]
    do
      ((EXTENSION++))
      DOWNLOAD_FOLDER="${FOLDER}-${EXTENSION}"
    done

    echo ""
    echo "Downloading to new folder: ${DOWNLOAD_FOLDER}"
  fi
fi

# mkdir if it doesn't exist and download files there. 
mkdir -p ${DOWNLOAD_FOLDER}

cat >${DOWNLOAD_FOLDER}/MANIFEST.HTML<<EOT
<!DOCTYPE html>
<html>
    <head>
        <title>MAST_2023-01-20T1647</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1647</h2>
        <h3>Total Files: 358</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y001120_flt.fits</td>
                <td>HST/o3y001120/o3y001120_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y001140_flt.fits</td>
                <td>HST/o3y001140/o3y001140_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y002120_flt.fits</td>
                <td>HST/o3y002120/o3y002120_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y002140_flt.fits</td>
                <td>HST/o3y002140/o3y002140_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o40z01wbq_flt.fits</td>
                <td>HST/o40z01wbq/o40z01wbq_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v04010_flt.fits</td>
                <td>HST/o42v04010/o42v04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v04020_flt.fits</td>
                <td>HST/o42v04020/o42v04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v04030_flt.fits</td>
                <td>HST/o42v04030/o42v04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v05010_flt.fits</td>
                <td>HST/o42v05010/o42v05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v05020_flt.fits</td>
                <td>HST/o42v05020/o42v05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v05030_flt.fits</td>
                <td>HST/o42v05030/o42v05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v06010_flt.fits</td>
                <td>HST/o42v06010/o42v06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v06020_flt.fits</td>
                <td>HST/o42v06020/o42v06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v06030_flt.fits</td>
                <td>HST/o42v06030/o42v06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01070_flt.fits</td>
                <td>HST/o43f01070/o43f01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65430020_flt.fits</td>
                <td>HST/o65430020/o65430020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65440030_flt.fits</td>
                <td>HST/o65440030/o65440030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65440040_flt.fits</td>
                <td>HST/o65440040/o65440040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o68m030e0_flt.fits</td>
                <td>HST/o68m030e0/o68m030e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j603020_flt.fits</td>
                <td>HST/o6j603020/o6j603020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01060_flt.fits</td>
                <td>HST/obqm01060/obqm01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01070_flt.fits</td>
                <td>HST/obqm01070/obqm01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01080_flt.fits</td>
                <td>HST/obqm01080/obqm01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01090_flt.fits</td>
                <td>HST/obqm01090/obqm01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm010a0_flt.fits</td>
                <td>HST/obqm010a0/obqm010a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02060_flt.fits</td>
                <td>HST/obqm02060/obqm02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02070_flt.fits</td>
                <td>HST/obqm02070/obqm02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02080_flt.fits</td>
                <td>HST/obqm02080/obqm02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02090_flt.fits</td>
                <td>HST/obqm02090/obqm02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm020a0_flt.fits</td>
                <td>HST/obqm020a0/obqm020a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm020b0_flt.fits</td>
                <td>HST/obqm020b0/obqm020b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm020c0_flt.fits</td>
                <td>HST/obqm020c0/obqm020c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03060_flt.fits</td>
                <td>HST/obqm03060/obqm03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03070_flt.fits</td>
                <td>HST/obqm03070/obqm03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03080_flt.fits</td>
                <td>HST/obqm03080/obqm03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03090_flt.fits</td>
                <td>HST/obqm03090/obqm03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm030a0_flt.fits</td>
                <td>HST/obqm030a0/obqm030a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01010_flt.fits</td>
                <td>HST/oclr01010/oclr01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01020_flt.fits</td>
                <td>HST/oclr01020/oclr01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01030_flt.fits</td>
                <td>HST/oclr01030/oclr01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01040_flt.fits</td>
                <td>HST/oclr01040/oclr01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01050_flt.fits</td>
                <td>HST/oclr01050/oclr01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01060_flt.fits</td>
                <td>HST/oclr01060/oclr01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr01070_flt.fits</td>
                <td>HST/oclr01070/oclr01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr02010_flt.fits</td>
                <td>HST/oclr02010/oclr02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr02020_flt.fits</td>
                <td>HST/oclr02020/oclr02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr02030_flt.fits</td>
                <td>HST/oclr02030/oclr02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr02040_flt.fits</td>
                <td>HST/oclr02040/oclr02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr02050_flt.fits</td>
                <td>HST/oclr02050/oclr02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03010_flt.fits</td>
                <td>HST/oclr03010/oclr03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03020_flt.fits</td>
                <td>HST/oclr03020/oclr03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03030_flt.fits</td>
                <td>HST/oclr03030/oclr03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03040_flt.fits</td>
                <td>HST/oclr03040/oclr03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03050_flt.fits</td>
                <td>HST/oclr03050/oclr03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03060_flt.fits</td>
                <td>HST/oclr03060/oclr03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr03070_flt.fits</td>
                <td>HST/oclr03070/oclr03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04010_flt.fits</td>
                <td>HST/oclr04010/oclr04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04020_flt.fits</td>
                <td>HST/oclr04020/oclr04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04030_flt.fits</td>
                <td>HST/oclr04030/oclr04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04040_flt.fits</td>
                <td>HST/oclr04040/oclr04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04050_flt.fits</td>
                <td>HST/oclr04050/oclr04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04060_flt.fits</td>
                <td>HST/oclr04060/oclr04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr04070_flt.fits</td>
                <td>HST/oclr04070/oclr04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01010_flt.fits</td>
                <td>HST/oclx01010/oclx01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01020_flt.fits</td>
                <td>HST/oclx01020/oclx01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01030_flt.fits</td>
                <td>HST/oclx01030/oclx01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01040_flt.fits</td>
                <td>HST/oclx01040/oclx01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02010_flt.fits</td>
                <td>HST/oclx02010/oclx02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02020_flt.fits</td>
                <td>HST/oclx02020/oclx02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02030_flt.fits</td>
                <td>HST/oclx02030/oclx02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02040_flt.fits</td>
                <td>HST/oclx02040/oclx02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03010_flt.fits</td>
                <td>HST/oclx03010/oclx03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03020_flt.fits</td>
                <td>HST/oclx03020/oclx03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03030_flt.fits</td>
                <td>HST/oclx03030/oclx03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03040_flt.fits</td>
                <td>HST/oclx03040/oclx03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04010_flt.fits</td>
                <td>HST/oclx04010/oclx04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04020_flt.fits</td>
                <td>HST/oclx04020/oclx04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04030_flt.fits</td>
                <td>HST/oclx04030/oclx04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04040_flt.fits</td>
                <td>HST/oclx04040/oclx04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05010_flt.fits</td>
                <td>HST/oclx05010/oclx05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05020_flt.fits</td>
                <td>HST/oclx05020/oclx05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05030_flt.fits</td>
                <td>HST/oclx05030/oclx05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05040_flt.fits</td>
                <td>HST/oclx05040/oclx05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06010_flt.fits</td>
                <td>HST/oclx06010/oclx06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06020_flt.fits</td>
                <td>HST/oclx06020/oclx06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06030_flt.fits</td>
                <td>HST/oclx06030/oclx06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06040_flt.fits</td>
                <td>HST/oclx06040/oclx06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07010_flt.fits</td>
                <td>HST/oclx07010/oclx07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07020_flt.fits</td>
                <td>HST/oclx07020/oclx07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07030_flt.fits</td>
                <td>HST/oclx07030/oclx07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07040_flt.fits</td>
                <td>HST/oclx07040/oclx07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08010_flt.fits</td>
                <td>HST/oclx08010/oclx08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08020_flt.fits</td>
                <td>HST/oclx08020/oclx08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08030_flt.fits</td>
                <td>HST/oclx08030/oclx08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08040_flt.fits</td>
                <td>HST/oclx08040/oclx08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09010_flt.fits</td>
                <td>HST/oclx09010/oclx09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09020_flt.fits</td>
                <td>HST/oclx09020/oclx09020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09030_flt.fits</td>
                <td>HST/oclx09030/oclx09030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09040_flt.fits</td>
                <td>HST/oclx09040/oclx09040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10010_flt.fits</td>
                <td>HST/oclx10010/oclx10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10020_flt.fits</td>
                <td>HST/oclx10020/oclx10020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10030_flt.fits</td>
                <td>HST/oclx10030/oclx10030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10040_flt.fits</td>
                <td>HST/oclx10040/oclx10040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn71060_flt.fits</td>
                <td>HST/odkn71060/odkn71060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn72060_flt.fits</td>
                <td>HST/odkn72060/odkn72060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn73070_flt.fits</td>
                <td>HST/odkn73070/odkn73070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn73080_flt.fits</td>
                <td>HST/odkn73080/odkn73080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn74060_flt.fits</td>
                <td>HST/odkn74060/odkn74060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn75060_flt.fits</td>
                <td>HST/odkn75060/odkn75060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn76060_flt.fits</td>
                <td>HST/odkn76060/odkn76060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn77070_flt.fits</td>
                <td>HST/odkn77070/odkn77070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn77080_flt.fits</td>
                <td>HST/odkn77080/odkn77080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn78060_flt.fits</td>
                <td>HST/odkn78060/odkn78060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn91050_flt.fits</td>
                <td>HST/odkn91050/odkn91050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn91060_flt.fits</td>
                <td>HST/odkn91060/odkn91060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn92050_flt.fits</td>
                <td>HST/odkn92050/odkn92050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn92060_flt.fits</td>
                <td>HST/odkn92060/odkn92060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn93070_flt.fits</td>
                <td>HST/odkn93070/odkn93070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn93080_flt.fits</td>
                <td>HST/odkn93080/odkn93080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn94050_flt.fits</td>
                <td>HST/odkn94050/odkn94050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn94060_flt.fits</td>
                <td>HST/odkn94060/odkn94060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy01020_flt.fits</td>
                <td>HST/odxy01020/odxy01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy01030_flt.fits</td>
                <td>HST/odxy01030/odxy01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy01040_flt.fits</td>
                <td>HST/odxy01040/odxy01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy02020_flt.fits</td>
                <td>HST/odxy02020/odxy02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy02030_flt.fits</td>
                <td>HST/odxy02030/odxy02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy02040_flt.fits</td>
                <td>HST/odxy02040/odxy02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy03020_flt.fits</td>
                <td>HST/odxy03020/odxy03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy03030_flt.fits</td>
                <td>HST/odxy03030/odxy03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy03040_flt.fits</td>
                <td>HST/odxy03040/odxy03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy04020_flt.fits</td>
                <td>HST/odxy04020/odxy04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy04030_flt.fits</td>
                <td>HST/odxy04030/odxy04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy04040_flt.fits</td>
                <td>HST/odxy04040/odxy04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy05020_flt.fits</td>
                <td>HST/odxy05020/odxy05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy05030_flt.fits</td>
                <td>HST/odxy05030/odxy05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy05040_flt.fits</td>
                <td>HST/odxy05040/odxy05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy06020_flt.fits</td>
                <td>HST/odxy06020/odxy06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy06030_flt.fits</td>
                <td>HST/odxy06030/odxy06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy06040_flt.fits</td>
                <td>HST/odxy06040/odxy06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy07020_flt.fits</td>
                <td>HST/odxy07020/odxy07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy07030_flt.fits</td>
                <td>HST/odxy07030/odxy07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy07040_flt.fits</td>
                <td>HST/odxy07040/odxy07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy08020_flt.fits</td>
                <td>HST/odxy08020/odxy08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy08030_flt.fits</td>
                <td>HST/odxy08030/odxy08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy08040_flt.fits</td>
                <td>HST/odxy08040/odxy08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy09020_flt.fits</td>
                <td>HST/odxy09020/odxy09020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy09030_flt.fits</td>
                <td>HST/odxy09030/odxy09030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy09040_flt.fits</td>
                <td>HST/odxy09040/odxy09040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy10020_flt.fits</td>
                <td>HST/odxy10020/odxy10020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy10030_flt.fits</td>
                <td>HST/odxy10030/odxy10030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy10040_flt.fits</td>
                <td>HST/odxy10040/odxy10040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy11020_flt.fits</td>
                <td>HST/odxy11020/odxy11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy11030_flt.fits</td>
                <td>HST/odxy11030/odxy11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy11040_flt.fits</td>
                <td>HST/odxy11040/odxy11040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy12020_flt.fits</td>
                <td>HST/odxy12020/odxy12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy12030_flt.fits</td>
                <td>HST/odxy12030/odxy12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy12040_flt.fits</td>
                <td>HST/odxy12040/odxy12040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy13020_flt.fits</td>
                <td>HST/odxy13020/odxy13020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy13030_flt.fits</td>
                <td>HST/odxy13030/odxy13030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy13040_flt.fits</td>
                <td>HST/odxy13040/odxy13040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy14020_flt.fits</td>
                <td>HST/odxy14020/odxy14020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy14030_flt.fits</td>
                <td>HST/odxy14030/odxy14030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy14040_flt.fits</td>
                <td>HST/odxy14040/odxy14040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy15020_flt.fits</td>
                <td>HST/odxy15020/odxy15020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy15030_flt.fits</td>
                <td>HST/odxy15030/odxy15030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy15040_flt.fits</td>
                <td>HST/odxy15040/odxy15040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy16020_flt.fits</td>
                <td>HST/odxy16020/odxy16020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy16030_flt.fits</td>
                <td>HST/odxy16030/odxy16030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy16040_flt.fits</td>
                <td>HST/odxy16040/odxy16040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy17020_flt.fits</td>
                <td>HST/odxy17020/odxy17020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy17030_flt.fits</td>
                <td>HST/odxy17030/odxy17030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy17040_flt.fits</td>
                <td>HST/odxy17040/odxy17040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy18020_flt.fits</td>
                <td>HST/odxy18020/odxy18020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy18030_flt.fits</td>
                <td>HST/odxy18030/odxy18030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy18040_flt.fits</td>
                <td>HST/odxy18040/odxy18040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy19020_flt.fits</td>
                <td>HST/odxy19020/odxy19020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy19030_flt.fits</td>
                <td>HST/odxy19030/odxy19030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy19040_flt.fits</td>
                <td>HST/odxy19040/odxy19040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy20020_flt.fits</td>
                <td>HST/odxy20020/odxy20020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy20030_flt.fits</td>
                <td>HST/odxy20030/odxy20030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy20040_flt.fits</td>
                <td>HST/odxy20040/odxy20040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy21020_flt.fits</td>
                <td>HST/odxy21020/odxy21020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy21030_flt.fits</td>
                <td>HST/odxy21030/odxy21030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy21040_flt.fits</td>
                <td>HST/odxy21040/odxy21040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy22020_flt.fits</td>
                <td>HST/odxy22020/odxy22020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy22030_flt.fits</td>
                <td>HST/odxy22030/odxy22030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy22040_flt.fits</td>
                <td>HST/odxy22040/odxy22040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy23020_flt.fits</td>
                <td>HST/odxy23020/odxy23020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy23030_flt.fits</td>
                <td>HST/odxy23030/odxy23030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy23040_flt.fits</td>
                <td>HST/odxy23040/odxy23040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy24020_flt.fits</td>
                <td>HST/odxy24020/odxy24020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy24030_flt.fits</td>
                <td>HST/odxy24030/odxy24030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy24040_flt.fits</td>
                <td>HST/odxy24040/odxy24040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy25020_flt.fits</td>
                <td>HST/odxy25020/odxy25020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy25030_flt.fits</td>
                <td>HST/odxy25030/odxy25030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy25040_flt.fits</td>
                <td>HST/odxy25040/odxy25040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy26020_flt.fits</td>
                <td>HST/odxy26020/odxy26020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy26030_flt.fits</td>
                <td>HST/odxy26030/odxy26030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy26040_flt.fits</td>
                <td>HST/odxy26040/odxy26040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy27020_flt.fits</td>
                <td>HST/odxy27020/odxy27020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy27030_flt.fits</td>
                <td>HST/odxy27030/odxy27030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy27040_flt.fits</td>
                <td>HST/odxy27040/odxy27040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy28020_flt.fits</td>
                <td>HST/odxy28020/odxy28020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy28030_flt.fits</td>
                <td>HST/odxy28030/odxy28030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy28040_flt.fits</td>
                <td>HST/odxy28040/odxy28040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy29020_flt.fits</td>
                <td>HST/odxy29020/odxy29020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy29030_flt.fits</td>
                <td>HST/odxy29030/odxy29030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy29040_flt.fits</td>
                <td>HST/odxy29040/odxy29040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy30020_flt.fits</td>
                <td>HST/odxy30020/odxy30020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy30030_flt.fits</td>
                <td>HST/odxy30030/odxy30030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy30040_flt.fits</td>
                <td>HST/odxy30040/odxy30040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy31020_flt.fits</td>
                <td>HST/odxy31020/odxy31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy31030_flt.fits</td>
                <td>HST/odxy31030/odxy31030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy31040_flt.fits</td>
                <td>HST/odxy31040/odxy31040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy32020_flt.fits</td>
                <td>HST/odxy32020/odxy32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy32030_flt.fits</td>
                <td>HST/odxy32030/odxy32030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy32040_flt.fits</td>
                <td>HST/odxy32040/odxy32040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy33020_flt.fits</td>
                <td>HST/odxy33020/odxy33020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy33030_flt.fits</td>
                <td>HST/odxy33030/odxy33030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy34020_flt.fits</td>
                <td>HST/odxy34020/odxy34020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy34030_flt.fits</td>
                <td>HST/odxy34030/odxy34030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy35020_flt.fits</td>
                <td>HST/odxy35020/odxy35020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy35030_flt.fits</td>
                <td>HST/odxy35030/odxy35030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy36020_flt.fits</td>
                <td>HST/odxy36020/odxy36020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy36030_flt.fits</td>
                <td>HST/odxy36030/odxy36030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy53020_flt.fits</td>
                <td>HST/odxy53020/odxy53020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy53030_flt.fits</td>
                <td>HST/odxy53030/odxy53030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy54020_flt.fits</td>
                <td>HST/odxy54020/odxy54020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy54030_flt.fits</td>
                <td>HST/odxy54030/odxy54030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy55020_flt.fits</td>
                <td>HST/odxy55020/odxy55020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy55030_flt.fits</td>
                <td>HST/odxy55030/odxy55030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy56020_flt.fits</td>
                <td>HST/odxy56020/odxy56020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy56030_flt.fits</td>
                <td>HST/odxy56030/odxy56030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010a0_flt.fits</td>
                <td>HST/oe1l010a0/oe1l010a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010b0_flt.fits</td>
                <td>HST/oe1l010b0/oe1l010b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010c0_flt.fits</td>
                <td>HST/oe1l010c0/oe1l010c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010d0_flt.fits</td>
                <td>HST/oe1l010d0/oe1l010d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010e0_flt.fits</td>
                <td>HST/oe1l010e0/oe1l010e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010f0_flt.fits</td>
                <td>HST/oe1l010f0/oe1l010f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010g0_flt.fits</td>
                <td>HST/oe1l010g0/oe1l010g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010h0_flt.fits</td>
                <td>HST/oe1l010h0/oe1l010h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010i0_flt.fits</td>
                <td>HST/oe1l010i0/oe1l010i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l010j0_flt.fits</td>
                <td>HST/oe1l010j0/oe1l010j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020a0_flt.fits</td>
                <td>HST/oe1l020a0/oe1l020a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020b0_flt.fits</td>
                <td>HST/oe1l020b0/oe1l020b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020c0_flt.fits</td>
                <td>HST/oe1l020c0/oe1l020c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020d0_flt.fits</td>
                <td>HST/oe1l020d0/oe1l020d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020e0_flt.fits</td>
                <td>HST/oe1l020e0/oe1l020e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020f0_flt.fits</td>
                <td>HST/oe1l020f0/oe1l020f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020g0_flt.fits</td>
                <td>HST/oe1l020g0/oe1l020g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020h0_flt.fits</td>
                <td>HST/oe1l020h0/oe1l020h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020i0_flt.fits</td>
                <td>HST/oe1l020i0/oe1l020i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l020j0_flt.fits</td>
                <td>HST/oe1l020j0/oe1l020j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030a0_flt.fits</td>
                <td>HST/oe1l030a0/oe1l030a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030b0_flt.fits</td>
                <td>HST/oe1l030b0/oe1l030b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030c0_flt.fits</td>
                <td>HST/oe1l030c0/oe1l030c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030d0_flt.fits</td>
                <td>HST/oe1l030d0/oe1l030d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030e0_flt.fits</td>
                <td>HST/oe1l030e0/oe1l030e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030f0_flt.fits</td>
                <td>HST/oe1l030f0/oe1l030f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030g0_flt.fits</td>
                <td>HST/oe1l030g0/oe1l030g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030h0_flt.fits</td>
                <td>HST/oe1l030h0/oe1l030h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l030i0_flt.fits</td>
                <td>HST/oe1l030i0/oe1l030i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040a0_flt.fits</td>
                <td>HST/oe1l040a0/oe1l040a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040b0_flt.fits</td>
                <td>HST/oe1l040b0/oe1l040b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040c0_flt.fits</td>
                <td>HST/oe1l040c0/oe1l040c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040d0_flt.fits</td>
                <td>HST/oe1l040d0/oe1l040d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040e0_flt.fits</td>
                <td>HST/oe1l040e0/oe1l040e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040f0_flt.fits</td>
                <td>HST/oe1l040f0/oe1l040f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040g0_flt.fits</td>
                <td>HST/oe1l040g0/oe1l040g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040h0_flt.fits</td>
                <td>HST/oe1l040h0/oe1l040h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040i0_flt.fits</td>
                <td>HST/oe1l040i0/oe1l040i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l040j0_flt.fits</td>
                <td>HST/oe1l040j0/oe1l040j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050a0_flt.fits</td>
                <td>HST/oe1l050a0/oe1l050a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050b0_flt.fits</td>
                <td>HST/oe1l050b0/oe1l050b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050c0_flt.fits</td>
                <td>HST/oe1l050c0/oe1l050c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050d0_flt.fits</td>
                <td>HST/oe1l050d0/oe1l050d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050e0_flt.fits</td>
                <td>HST/oe1l050e0/oe1l050e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050f0_flt.fits</td>
                <td>HST/oe1l050f0/oe1l050f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050g0_flt.fits</td>
                <td>HST/oe1l050g0/oe1l050g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050h0_flt.fits</td>
                <td>HST/oe1l050h0/oe1l050h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l050i0_flt.fits</td>
                <td>HST/oe1l050i0/oe1l050i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060a0_flt.fits</td>
                <td>HST/oe1l060a0/oe1l060a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060b0_flt.fits</td>
                <td>HST/oe1l060b0/oe1l060b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060c0_flt.fits</td>
                <td>HST/oe1l060c0/oe1l060c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060d0_flt.fits</td>
                <td>HST/oe1l060d0/oe1l060d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060e0_flt.fits</td>
                <td>HST/oe1l060e0/oe1l060e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060f0_flt.fits</td>
                <td>HST/oe1l060f0/oe1l060f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060g0_flt.fits</td>
                <td>HST/oe1l060g0/oe1l060g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060h0_flt.fits</td>
                <td>HST/oe1l060h0/oe1l060h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l060i0_flt.fits</td>
                <td>HST/oe1l060i0/oe1l060i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070a0_flt.fits</td>
                <td>HST/oe1l070a0/oe1l070a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070b0_flt.fits</td>
                <td>HST/oe1l070b0/oe1l070b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070c0_flt.fits</td>
                <td>HST/oe1l070c0/oe1l070c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070d0_flt.fits</td>
                <td>HST/oe1l070d0/oe1l070d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070e0_flt.fits</td>
                <td>HST/oe1l070e0/oe1l070e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070f0_flt.fits</td>
                <td>HST/oe1l070f0/oe1l070f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070g0_flt.fits</td>
                <td>HST/oe1l070g0/oe1l070g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l070h0_flt.fits</td>
                <td>HST/oe1l070h0/oe1l070h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080a0_flt.fits</td>
                <td>HST/oe1l080a0/oe1l080a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080b0_flt.fits</td>
                <td>HST/oe1l080b0/oe1l080b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080c0_flt.fits</td>
                <td>HST/oe1l080c0/oe1l080c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080d0_flt.fits</td>
                <td>HST/oe1l080d0/oe1l080d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080e0_flt.fits</td>
                <td>HST/oe1l080e0/oe1l080e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080f0_flt.fits</td>
                <td>HST/oe1l080f0/oe1l080f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080g0_flt.fits</td>
                <td>HST/oe1l080g0/oe1l080g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080h0_flt.fits</td>
                <td>HST/oe1l080h0/oe1l080h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l080i0_flt.fits</td>
                <td>HST/oe1l080i0/oe1l080i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550a0_flt.fits</td>
                <td>HST/oe1l550a0/oe1l550a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550b0_flt.fits</td>
                <td>HST/oe1l550b0/oe1l550b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550c0_flt.fits</td>
                <td>HST/oe1l550c0/oe1l550c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550d0_flt.fits</td>
                <td>HST/oe1l550d0/oe1l550d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550e0_flt.fits</td>
                <td>HST/oe1l550e0/oe1l550e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550f0_flt.fits</td>
                <td>HST/oe1l550f0/oe1l550f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550g0_flt.fits</td>
                <td>HST/oe1l550g0/oe1l550g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550h0_flt.fits</td>
                <td>HST/oe1l550h0/oe1l550h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l550i0_flt.fits</td>
                <td>HST/oe1l550i0/oe1l550i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560a0_flt.fits</td>
                <td>HST/oe1l560a0/oe1l560a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560b0_flt.fits</td>
                <td>HST/oe1l560b0/oe1l560b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560c0_flt.fits</td>
                <td>HST/oe1l560c0/oe1l560c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560d0_flt.fits</td>
                <td>HST/oe1l560d0/oe1l560d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560e0_flt.fits</td>
                <td>HST/oe1l560e0/oe1l560e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560f0_flt.fits</td>
                <td>HST/oe1l560f0/oe1l560f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560g0_flt.fits</td>
                <td>HST/oe1l560g0/oe1l560g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560h0_flt.fits</td>
                <td>HST/oe1l560h0/oe1l560h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l560i0_flt.fits</td>
                <td>HST/oe1l560i0/oe1l560i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570a0_flt.fits</td>
                <td>HST/oe1l570a0/oe1l570a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570b0_flt.fits</td>
                <td>HST/oe1l570b0/oe1l570b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570c0_flt.fits</td>
                <td>HST/oe1l570c0/oe1l570c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570d0_flt.fits</td>
                <td>HST/oe1l570d0/oe1l570d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570e0_flt.fits</td>
                <td>HST/oe1l570e0/oe1l570e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570f0_flt.fits</td>
                <td>HST/oe1l570f0/oe1l570f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570g0_flt.fits</td>
                <td>HST/oe1l570g0/oe1l570g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l570h0_flt.fits</td>
                <td>HST/oe1l570h0/oe1l570h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580a0_flt.fits</td>
                <td>HST/oe1l580a0/oe1l580a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580b0_flt.fits</td>
                <td>HST/oe1l580b0/oe1l580b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580c0_flt.fits</td>
                <td>HST/oe1l580c0/oe1l580c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580d0_flt.fits</td>
                <td>HST/oe1l580d0/oe1l580d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580e0_flt.fits</td>
                <td>HST/oe1l580e0/oe1l580e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580f0_flt.fits</td>
                <td>HST/oe1l580f0/oe1l580f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580g0_flt.fits</td>
                <td>HST/oe1l580g0/oe1l580g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580h0_flt.fits</td>
                <td>HST/oe1l580h0/oe1l580h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l580i0_flt.fits</td>
                <td>HST/oe1l580i0/oe1l580i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01050_flt.fits</td>
                <td>HST/oebx01050/oebx01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01060_flt.fits</td>
                <td>HST/oebx01060/oebx01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01070_flt.fits</td>
                <td>HST/oebx01070/oebx01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01080_flt.fits</td>
                <td>HST/oebx01080/oebx01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01090_flt.fits</td>
                <td>HST/oebx01090/oebx01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02060_flt.fits</td>
                <td>HST/oebx02060/oebx02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02070_flt.fits</td>
                <td>HST/oebx02070/oebx02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02080_flt.fits</td>
                <td>HST/oebx02080/oebx02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02090_flt.fits</td>
                <td>HST/oebx02090/oebx02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx020a0_flt.fits</td>
                <td>HST/oebx020a0/oebx020a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx020b0_flt.fits</td>
                <td>HST/oebx020b0/oebx020b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx020c0_flt.fits</td>
                <td>HST/oebx020c0/oebx020c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03060_flt.fits</td>
                <td>HST/oebx03060/oebx03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03070_flt.fits</td>
                <td>HST/oebx03070/oebx03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03080_flt.fits</td>
                <td>HST/oebx03080/oebx03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03090_flt.fits</td>
                <td>HST/oebx03090/oebx03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
        </table>
    </body>
</html>

EOT

# Download Product Files:



cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080c0/oe1l080c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080c0/oe1l080c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080d0/oe1l080d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080d0/oe1l080d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080e0/oe1l080e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080e0/oe1l080e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080f0/oe1l080f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080f0/oe1l080f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080g0/oe1l080g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080g0/oe1l080g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080h0/oe1l080h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080h0/oe1l080h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080i0/oe1l080i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080i0/oe1l080i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550a0/oe1l550a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550a0/oe1l550a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550b0/oe1l550b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550b0/oe1l550b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550c0/oe1l550c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550c0/oe1l550c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550d0/oe1l550d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550d0/oe1l550d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550e0/oe1l550e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550e0/oe1l550e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550f0/oe1l550f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550f0/oe1l550f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550g0/oe1l550g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550g0/oe1l550g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550h0/oe1l550h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550h0/oe1l550h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l550i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l550i0/oe1l550i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l550i0/oe1l550i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l550i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560a0/oe1l560a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560a0/oe1l560a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560b0/oe1l560b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560b0/oe1l560b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560c0/oe1l560c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560c0/oe1l560c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560d0/oe1l560d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560d0/oe1l560d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560e0/oe1l560e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560e0/oe1l560e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560f0/oe1l560f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560f0/oe1l560f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560g0/oe1l560g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560g0/oe1l560g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560h0/oe1l560h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560h0/oe1l560h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l560i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l560i0/oe1l560i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l560i0/oe1l560i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l560i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570a0/oe1l570a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570a0/oe1l570a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570b0/oe1l570b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570b0/oe1l570b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570c0/oe1l570c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570c0/oe1l570c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570d0/oe1l570d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570d0/oe1l570d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570e0/oe1l570e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570e0/oe1l570e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570f0/oe1l570f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570f0/oe1l570f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570g0/oe1l570g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570g0/oe1l570g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l570h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l570h0/oe1l570h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l570h0/oe1l570h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l570h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580a0/oe1l580a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580a0/oe1l580a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580b0/oe1l580b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580b0/oe1l580b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580c0/oe1l580c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580c0/oe1l580c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580d0/oe1l580d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580d0/oe1l580d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580e0/oe1l580e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580e0/oe1l580e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580f0/oe1l580f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580f0/oe1l580f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580g0/oe1l580g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580g0/oe1l580g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580h0/oe1l580h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580h0/oe1l580h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l580i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l580i0/oe1l580i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l580i0/oe1l580i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l580i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01050/oebx01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01050/oebx01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01060/oebx01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01060/oebx01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01070/oebx01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01070/oebx01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01080/oebx01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01080/oebx01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01090/oebx01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01090/oebx01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02060/oebx02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02060/oebx02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02070/oebx02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02070/oebx02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02080/oebx02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02080/oebx02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02090/oebx02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02090/oebx02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx020a0/oebx020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx020a0/oebx020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx020b0/oebx020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx020b0/oebx020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx020c0/oebx020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx020c0/oebx020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03060/oebx03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03060/oebx03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03070/oebx03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03070/oebx03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03080/oebx03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03080/oebx03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03090/oebx03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03090/oebx03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oebx03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y001120_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y001120/o3y001120_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y001120/o3y001120_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o3y001120_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y001140_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y001140/o3y001140_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y001140/o3y001140_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o3y001140_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y002120_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y002120/o3y002120_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y002120/o3y002120_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o3y002120_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y002140_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y002140/o3y002140_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y002140/o3y002140_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o3y002140_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40z01wbq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40z01wbq/o40z01wbq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40z01wbq/o40z01wbq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o40z01wbq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v04010/o42v04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v04010/o42v04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v04020/o42v04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v04020/o42v04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v04030/o42v04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v04030/o42v04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v05010/o42v05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v05010/o42v05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v05020/o42v05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v05020/o42v05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v05030/o42v05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v05030/o42v05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v06010/o42v06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v06010/o42v06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v06020/o42v06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v06020/o42v06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v06030/o42v06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v06030/o42v06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o42v06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01070/o43f01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01070/o43f01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o43f01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65430020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65430020/o65430020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65430020/o65430020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65430020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65440030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65440030/o65440030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65440030/o65440030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65440030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65440040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65440040/o65440040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65440040/o65440040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65440040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030e0/o68m030e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030e0/o68m030e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o68m030e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j603020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j603020/o6j603020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j603020/o6j603020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o6j603020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01060/obqm01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01060/obqm01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01070/obqm01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01070/obqm01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01080/obqm01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01080/obqm01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01090/obqm01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01090/obqm01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm010a0/obqm010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm010a0/obqm010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02060/obqm02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02060/obqm02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02070/obqm02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02070/obqm02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02080/obqm02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02080/obqm02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02090/obqm02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02090/obqm02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm020a0/obqm020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm020a0/obqm020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm020b0/obqm020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm020b0/obqm020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm020c0/obqm020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm020c0/obqm020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03060/obqm03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03060/obqm03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03070/obqm03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03070/obqm03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03080/obqm03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03080/obqm03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03090/obqm03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03090/obqm03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm030a0/obqm030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm030a0/obqm030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/obqm030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01010/oclr01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01010/oclr01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01020/oclr01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01020/oclr01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01030/oclr01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01030/oclr01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01040/oclr01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01040/oclr01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01050/oclr01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01050/oclr01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01060/oclr01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01060/oclr01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr01070/oclr01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr01070/oclr01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr02010/oclr02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr02010/oclr02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr02020/oclr02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr02020/oclr02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr02030/oclr02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr02030/oclr02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr02040/oclr02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr02040/oclr02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr02050/oclr02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr02050/oclr02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03010/oclr03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03010/oclr03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03020/oclr03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03020/oclr03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03030/oclr03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03030/oclr03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03040/oclr03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03040/oclr03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03050/oclr03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03050/oclr03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03060/oclr03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03060/oclr03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr03070/oclr03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr03070/oclr03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04010/oclr04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04010/oclr04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04020/oclr04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04020/oclr04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04030/oclr04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04030/oclr04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04040/oclr04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04040/oclr04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04050/oclr04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04050/oclr04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04060/oclr04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04060/oclr04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr04070/oclr04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr04070/oclr04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclr04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01010/oclx01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01010/oclx01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01020/oclx01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01020/oclx01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01030/oclx01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01030/oclx01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01040/oclx01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01040/oclx01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02010/oclx02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02010/oclx02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02020/oclx02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02020/oclx02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02030/oclx02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02030/oclx02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02040/oclx02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02040/oclx02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03010/oclx03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03010/oclx03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03020/oclx03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03020/oclx03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03030/oclx03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03030/oclx03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03040/oclx03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03040/oclx03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04010/oclx04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04010/oclx04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04020/oclx04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04020/oclx04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04030/oclx04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04030/oclx04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04040/oclx04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04040/oclx04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05010/oclx05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05010/oclx05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05020/oclx05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05020/oclx05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05030/oclx05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05030/oclx05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05040/oclx05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05040/oclx05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06010/oclx06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06010/oclx06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06020/oclx06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06020/oclx06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06030/oclx06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06030/oclx06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06040/oclx06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06040/oclx06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07010/oclx07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07010/oclx07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07020/oclx07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07020/oclx07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07030/oclx07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07030/oclx07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07040/oclx07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07040/oclx07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08010/oclx08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08010/oclx08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08020/oclx08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08020/oclx08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08030/oclx08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08030/oclx08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08040/oclx08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08040/oclx08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09010/oclx09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09010/oclx09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09020/oclx09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09020/oclx09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09030/oclx09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09030/oclx09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09040/oclx09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09040/oclx09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10010/oclx10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10010/oclx10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy27030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy27030/odxy27030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy27030/odxy27030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy27030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy27040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy27040/odxy27040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy27040/odxy27040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy27040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy28020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy28020/odxy28020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy28020/odxy28020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy28020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy28030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy28030/odxy28030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy28030/odxy28030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy28030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy28040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy28040/odxy28040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy28040/odxy28040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy28040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy29020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy29020/odxy29020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy29020/odxy29020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy29020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy29030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy29030/odxy29030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy29030/odxy29030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy29030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy29040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy29040/odxy29040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy29040/odxy29040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy29040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy30020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy30020/odxy30020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy30020/odxy30020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy30020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy30030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy30030/odxy30030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy30030/odxy30030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy30030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy30040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy30040/odxy30040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy30040/odxy30040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy30040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy31020/odxy31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy31020/odxy31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy31030/odxy31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy31030/odxy31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy31040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy31040/odxy31040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy31040/odxy31040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy31040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy32020/odxy32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy32020/odxy32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy32030/odxy32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy32030/odxy32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy32040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy32040/odxy32040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy32040/odxy32040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy32040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy33020/odxy33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy33020/odxy33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy33030/odxy33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy33030/odxy33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy34020/odxy34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy34020/odxy34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy34030/odxy34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy34030/odxy34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy35020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy35020/odxy35020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy35020/odxy35020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy35020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy35030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy35030/odxy35030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy35030/odxy35030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy35030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy36020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy36020/odxy36020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy36020/odxy36020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy36020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy36030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy36030/odxy36030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy36030/odxy36030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy36030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy53020/odxy53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy53020/odxy53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy53030/odxy53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy53030/odxy53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy54020/odxy54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy54020/odxy54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy54030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy54030/odxy54030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy54030/odxy54030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy54030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy55020/odxy55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy55020/odxy55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy55030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy55030/odxy55030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy55030/odxy55030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy55030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy56020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy56020/odxy56020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy56020/odxy56020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy56020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy56030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy56030/odxy56030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy56030/odxy56030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy56030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010a0/oe1l010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010a0/oe1l010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010b0/oe1l010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010b0/oe1l010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010c0/oe1l010c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010c0/oe1l010c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010d0/oe1l010d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010d0/oe1l010d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010e0/oe1l010e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010e0/oe1l010e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010f0/oe1l010f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010f0/oe1l010f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010g0/oe1l010g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010g0/oe1l010g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010h0/oe1l010h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010h0/oe1l010h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010i0/oe1l010i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010i0/oe1l010i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l010j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l010j0/oe1l010j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l010j0/oe1l010j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l010j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020a0/oe1l020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020a0/oe1l020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020b0/oe1l020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020b0/oe1l020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020c0/oe1l020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020c0/oe1l020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020d0/oe1l020d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020d0/oe1l020d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020e0/oe1l020e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020e0/oe1l020e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020f0/oe1l020f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020f0/oe1l020f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020g0/oe1l020g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020g0/oe1l020g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020h0/oe1l020h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020h0/oe1l020h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020i0/oe1l020i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020i0/oe1l020i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l020j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l020j0/oe1l020j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l020j0/oe1l020j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l020j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030a0/oe1l030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030a0/oe1l030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030b0/oe1l030b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030b0/oe1l030b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030c0/oe1l030c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030c0/oe1l030c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030d0/oe1l030d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030d0/oe1l030d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030e0/oe1l030e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030e0/oe1l030e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030f0/oe1l030f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030f0/oe1l030f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030g0/oe1l030g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030g0/oe1l030g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030h0/oe1l030h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030h0/oe1l030h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l030i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l030i0/oe1l030i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l030i0/oe1l030i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l030i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040a0/oe1l040a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040a0/oe1l040a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040b0/oe1l040b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040b0/oe1l040b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040c0/oe1l040c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040c0/oe1l040c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040d0/oe1l040d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040d0/oe1l040d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040e0/oe1l040e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040e0/oe1l040e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040f0/oe1l040f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040f0/oe1l040f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040g0/oe1l040g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040g0/oe1l040g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040h0/oe1l040h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040h0/oe1l040h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040i0/oe1l040i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040i0/oe1l040i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l040j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l040j0/oe1l040j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l040j0/oe1l040j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l040j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050a0/oe1l050a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050a0/oe1l050a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050b0/oe1l050b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050b0/oe1l050b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050c0/oe1l050c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050c0/oe1l050c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050d0/oe1l050d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050d0/oe1l050d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050e0/oe1l050e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050e0/oe1l050e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050f0/oe1l050f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050f0/oe1l050f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050g0/oe1l050g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050g0/oe1l050g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050h0/oe1l050h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050h0/oe1l050h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l050i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l050i0/oe1l050i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l050i0/oe1l050i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l050i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060a0/oe1l060a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060a0/oe1l060a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060b0/oe1l060b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060b0/oe1l060b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060c0/oe1l060c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060c0/oe1l060c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060d0/oe1l060d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060d0/oe1l060d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060e0/oe1l060e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060e0/oe1l060e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060f0/oe1l060f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060f0/oe1l060f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060g0/oe1l060g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060g0/oe1l060g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060h0/oe1l060h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060h0/oe1l060h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l060i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l060i0/oe1l060i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l060i0/oe1l060i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l060i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070a0/oe1l070a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070a0/oe1l070a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070b0/oe1l070b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070b0/oe1l070b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070c0/oe1l070c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070c0/oe1l070c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070d0/oe1l070d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070d0/oe1l070d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070e0/oe1l070e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070e0/oe1l070e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070f0/oe1l070f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070f0/oe1l070f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070g0/oe1l070g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070g0/oe1l070g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l070h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l070h0/oe1l070h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l070h0/oe1l070h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l070h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080a0/oe1l080a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080a0/oe1l080a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l080b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l080b0/oe1l080b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l080b0/oe1l080b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1l080b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10020/oclx10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10020/oclx10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10030/oclx10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10030/oclx10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10040/oclx10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10040/oclx10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oclx10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn71060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn71060/odkn71060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn71060/odkn71060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn71060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn72060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn72060/odkn72060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn72060/odkn72060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn72060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn73070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn73070/odkn73070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn73070/odkn73070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn73070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn73080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn73080/odkn73080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn73080/odkn73080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn73080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn74060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn74060/odkn74060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn74060/odkn74060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn74060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn75060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn75060/odkn75060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn75060/odkn75060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn75060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn76060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn76060/odkn76060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn76060/odkn76060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn76060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn77070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn77070/odkn77070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn77070/odkn77070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn77070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn77080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn77080/odkn77080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn77080/odkn77080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn77080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn78060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn78060/odkn78060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn78060/odkn78060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn78060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn91050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn91050/odkn91050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn91050/odkn91050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn91050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn91060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn91060/odkn91060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn91060/odkn91060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn91060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn92050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn92050/odkn92050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn92050/odkn92050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn92050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn92060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn92060/odkn92060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn92060/odkn92060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn92060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn93070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn93070/odkn93070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn93070/odkn93070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn93070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn93080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn93080/odkn93080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn93080/odkn93080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn93080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn94050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn94050/odkn94050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn94050/odkn94050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn94050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn94060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn94060/odkn94060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn94060/odkn94060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odkn94060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy01020/odxy01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy01020/odxy01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy01030/odxy01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy01030/odxy01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy01040/odxy01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy01040/odxy01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy02020/odxy02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy02020/odxy02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy02030/odxy02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy02030/odxy02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy02040/odxy02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy02040/odxy02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy03020/odxy03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy03020/odxy03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy03030/odxy03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy03030/odxy03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy03040/odxy03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy03040/odxy03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy04020/odxy04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy04020/odxy04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy04030/odxy04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy04030/odxy04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy04040/odxy04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy04040/odxy04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy05020/odxy05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy05020/odxy05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy05030/odxy05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy05030/odxy05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy05040/odxy05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy05040/odxy05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy06020/odxy06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy06020/odxy06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy06030/odxy06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy06030/odxy06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy06040/odxy06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy06040/odxy06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy07020/odxy07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy07020/odxy07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy07030/odxy07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy07030/odxy07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy07040/odxy07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy07040/odxy07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy08020/odxy08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy08020/odxy08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy08030/odxy08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy08030/odxy08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy08040/odxy08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy08040/odxy08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy09020/odxy09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy09020/odxy09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy09030/odxy09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy09030/odxy09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy09040/odxy09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy09040/odxy09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy10020/odxy10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy10020/odxy10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy10030/odxy10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy10030/odxy10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy10040/odxy10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy10040/odxy10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy11020/odxy11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy11020/odxy11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy11030/odxy11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy11030/odxy11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy11040/odxy11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy11040/odxy11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy12020/odxy12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy12020/odxy12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy12030/odxy12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy12030/odxy12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy12040/odxy12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy12040/odxy12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy13020/odxy13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy13020/odxy13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy13030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy13030/odxy13030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy13030/odxy13030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy13030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy13040/odxy13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy13040/odxy13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy14020/odxy14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy14020/odxy14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy14030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy14030/odxy14030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy14030/odxy14030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy14030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy14040/odxy14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy14040/odxy14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy15020/odxy15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy15020/odxy15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy15030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy15030/odxy15030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy15030/odxy15030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy15030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy15040/odxy15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy15040/odxy15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy16020/odxy16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy16020/odxy16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy16030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy16030/odxy16030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy16030/odxy16030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy16030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy16040/odxy16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy16040/odxy16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy17020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy17020/odxy17020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy17020/odxy17020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy17020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy17030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy17030/odxy17030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy17030/odxy17030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy17030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy17040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy17040/odxy17040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy17040/odxy17040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy17040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy18020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy18020/odxy18020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy18020/odxy18020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy18020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy18030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy18030/odxy18030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy18030/odxy18030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy18030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy18040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy18040/odxy18040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy18040/odxy18040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy18040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy19020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy19020/odxy19020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy19020/odxy19020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy19020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy19030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy19030/odxy19030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy19030/odxy19030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy19030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy19040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy19040/odxy19040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy19040/odxy19040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy19040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy20020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy20020/odxy20020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy20020/odxy20020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy20020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy20030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy20030/odxy20030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy20030/odxy20030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy20030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy20040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy20040/odxy20040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy20040/odxy20040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy20040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy21020/odxy21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy21020/odxy21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy21030/odxy21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy21030/odxy21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy21040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy21040/odxy21040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy21040/odxy21040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy21040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy22020/odxy22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy22020/odxy22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy22030/odxy22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy22030/odxy22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy22040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy22040/odxy22040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy22040/odxy22040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy22040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy23020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy23020/odxy23020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy23020/odxy23020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy23020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy23030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy23030/odxy23030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy23030/odxy23030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy23030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy23040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy23040/odxy23040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy23040/odxy23040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy23040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy24020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy24020/odxy24020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy24020/odxy24020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy24020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy24030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy24030/odxy24030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy24030/odxy24030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy24030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy24040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy24040/odxy24040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy24040/odxy24040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy24040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy25020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy25020/odxy25020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy25020/odxy25020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy25020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy25030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy25030/odxy25030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy25030/odxy25030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy25030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy25040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy25040/odxy25040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy25040/odxy25040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy25040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy26020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy26020/odxy26020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy26020/odxy26020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy26020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy26030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy26030/odxy26030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy26030/odxy26030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy26030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy26040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy26040/odxy26040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy26040/odxy26040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy26040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy27020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy27020/odxy27020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy27020/odxy27020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/odxy27020_flt.fits'




exit 0
