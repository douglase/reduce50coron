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
FOLDER=MAST_2023-01-20T1642
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
        <title>MAST_2023-01-20T1642</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1642</h2>
        <h3>Total Files: 491</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y0010t0_flt.fits</td>
                <td>HST/o3y0010t0/o3y0010t0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y0010v0_flt.fits</td>
                <td>HST/o3y0010v0/o3y0010v0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y0020t0_flt.fits</td>
                <td>HST/o3y0020t0/o3y0020t0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y0020v0_flt.fits</td>
                <td>HST/o3y0020v0/o3y0020v0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o40601060_flt.fits</td>
                <td>HST/o40601060/o40601060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01080_flt.fits</td>
                <td>HST/o43f01080/o43f01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01090_flt.fits</td>
                <td>HST/o43f01090/o43f01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6lx02010_flt.fits</td>
                <td>HST/o6lx02010/o6lx02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6lx02020_flt.fits</td>
                <td>HST/o6lx02020/o6lx02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6lx03010_flt.fits</td>
                <td>HST/o6lx03010/o6lx03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6lx03020_flt.fits</td>
                <td>HST/o6lx03020/o6lx03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7913010_flt.fits</td>
                <td>HST/ob7913010/ob7913010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7914010_flt.fits</td>
                <td>HST/ob7914010/ob7914010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7915010_flt.fits</td>
                <td>HST/ob7915010/ob7915010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01010_flt.fits</td>
                <td>HST/obze01010/obze01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01020_flt.fits</td>
                <td>HST/obze01020/obze01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01030_flt.fits</td>
                <td>HST/obze01030/obze01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01040_flt.fits</td>
                <td>HST/obze01040/obze01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01050_flt.fits</td>
                <td>HST/obze01050/obze01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01060_flt.fits</td>
                <td>HST/obze01060/obze01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01070_flt.fits</td>
                <td>HST/obze01070/obze01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01080_flt.fits</td>
                <td>HST/obze01080/obze01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze01090_flt.fits</td>
                <td>HST/obze01090/obze01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010a0_flt.fits</td>
                <td>HST/obze010a0/obze010a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010b0_flt.fits</td>
                <td>HST/obze010b0/obze010b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010c0_flt.fits</td>
                <td>HST/obze010c0/obze010c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010d0_flt.fits</td>
                <td>HST/obze010d0/obze010d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010e0_flt.fits</td>
                <td>HST/obze010e0/obze010e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010f0_flt.fits</td>
                <td>HST/obze010f0/obze010f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010g0_flt.fits</td>
                <td>HST/obze010g0/obze010g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010h0_flt.fits</td>
                <td>HST/obze010h0/obze010h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010i0_flt.fits</td>
                <td>HST/obze010i0/obze010i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze010j0_flt.fits</td>
                <td>HST/obze010j0/obze010j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02010_flt.fits</td>
                <td>HST/obze02010/obze02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02020_flt.fits</td>
                <td>HST/obze02020/obze02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02030_flt.fits</td>
                <td>HST/obze02030/obze02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02040_flt.fits</td>
                <td>HST/obze02040/obze02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02050_flt.fits</td>
                <td>HST/obze02050/obze02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02060_flt.fits</td>
                <td>HST/obze02060/obze02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02070_flt.fits</td>
                <td>HST/obze02070/obze02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02080_flt.fits</td>
                <td>HST/obze02080/obze02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze02090_flt.fits</td>
                <td>HST/obze02090/obze02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020a0_flt.fits</td>
                <td>HST/obze020a0/obze020a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020b0_flt.fits</td>
                <td>HST/obze020b0/obze020b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020c0_flt.fits</td>
                <td>HST/obze020c0/obze020c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020d0_flt.fits</td>
                <td>HST/obze020d0/obze020d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020e0_flt.fits</td>
                <td>HST/obze020e0/obze020e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020f0_flt.fits</td>
                <td>HST/obze020f0/obze020f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020g0_flt.fits</td>
                <td>HST/obze020g0/obze020g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020h0_flt.fits</td>
                <td>HST/obze020h0/obze020h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020i0_flt.fits</td>
                <td>HST/obze020i0/obze020i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze020j0_flt.fits</td>
                <td>HST/obze020j0/obze020j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03010_flt.fits</td>
                <td>HST/obze03010/obze03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03020_flt.fits</td>
                <td>HST/obze03020/obze03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03030_flt.fits</td>
                <td>HST/obze03030/obze03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03040_flt.fits</td>
                <td>HST/obze03040/obze03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03050_flt.fits</td>
                <td>HST/obze03050/obze03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03060_flt.fits</td>
                <td>HST/obze03060/obze03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03070_flt.fits</td>
                <td>HST/obze03070/obze03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03080_flt.fits</td>
                <td>HST/obze03080/obze03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze03090_flt.fits</td>
                <td>HST/obze03090/obze03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030a0_flt.fits</td>
                <td>HST/obze030a0/obze030a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030b0_flt.fits</td>
                <td>HST/obze030b0/obze030b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030c0_flt.fits</td>
                <td>HST/obze030c0/obze030c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030d0_flt.fits</td>
                <td>HST/obze030d0/obze030d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030e0_flt.fits</td>
                <td>HST/obze030e0/obze030e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030f0_flt.fits</td>
                <td>HST/obze030f0/obze030f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030g0_flt.fits</td>
                <td>HST/obze030g0/obze030g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030h0_flt.fits</td>
                <td>HST/obze030h0/obze030h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030i0_flt.fits</td>
                <td>HST/obze030i0/obze030i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze030j0_flt.fits</td>
                <td>HST/obze030j0/obze030j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04010_flt.fits</td>
                <td>HST/obze04010/obze04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04020_flt.fits</td>
                <td>HST/obze04020/obze04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04030_flt.fits</td>
                <td>HST/obze04030/obze04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04040_flt.fits</td>
                <td>HST/obze04040/obze04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04050_flt.fits</td>
                <td>HST/obze04050/obze04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04060_flt.fits</td>
                <td>HST/obze04060/obze04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04070_flt.fits</td>
                <td>HST/obze04070/obze04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04080_flt.fits</td>
                <td>HST/obze04080/obze04080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze04090_flt.fits</td>
                <td>HST/obze04090/obze04090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040a0_flt.fits</td>
                <td>HST/obze040a0/obze040a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040b0_flt.fits</td>
                <td>HST/obze040b0/obze040b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040c0_flt.fits</td>
                <td>HST/obze040c0/obze040c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040d0_flt.fits</td>
                <td>HST/obze040d0/obze040d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040e0_flt.fits</td>
                <td>HST/obze040e0/obze040e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze040f0_flt.fits</td>
                <td>HST/obze040f0/obze040f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05010_flt.fits</td>
                <td>HST/obze05010/obze05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05020_flt.fits</td>
                <td>HST/obze05020/obze05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05030_flt.fits</td>
                <td>HST/obze05030/obze05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05040_flt.fits</td>
                <td>HST/obze05040/obze05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05050_flt.fits</td>
                <td>HST/obze05050/obze05050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05060_flt.fits</td>
                <td>HST/obze05060/obze05060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05070_flt.fits</td>
                <td>HST/obze05070/obze05070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05080_flt.fits</td>
                <td>HST/obze05080/obze05080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze05090_flt.fits</td>
                <td>HST/obze05090/obze05090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050a0_flt.fits</td>
                <td>HST/obze050a0/obze050a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050b0_flt.fits</td>
                <td>HST/obze050b0/obze050b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050c0_flt.fits</td>
                <td>HST/obze050c0/obze050c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050d0_flt.fits</td>
                <td>HST/obze050d0/obze050d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050e0_flt.fits</td>
                <td>HST/obze050e0/obze050e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze050f0_flt.fits</td>
                <td>HST/obze050f0/obze050f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06010_flt.fits</td>
                <td>HST/obze06010/obze06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06020_flt.fits</td>
                <td>HST/obze06020/obze06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06030_flt.fits</td>
                <td>HST/obze06030/obze06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06040_flt.fits</td>
                <td>HST/obze06040/obze06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06050_flt.fits</td>
                <td>HST/obze06050/obze06050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06060_flt.fits</td>
                <td>HST/obze06060/obze06060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06070_flt.fits</td>
                <td>HST/obze06070/obze06070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06080_flt.fits</td>
                <td>HST/obze06080/obze06080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze06090_flt.fits</td>
                <td>HST/obze06090/obze06090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060a0_flt.fits</td>
                <td>HST/obze060a0/obze060a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060b0_flt.fits</td>
                <td>HST/obze060b0/obze060b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060c0_flt.fits</td>
                <td>HST/obze060c0/obze060c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060d0_flt.fits</td>
                <td>HST/obze060d0/obze060d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060e0_flt.fits</td>
                <td>HST/obze060e0/obze060e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obze060f0_flt.fits</td>
                <td>HST/obze060f0/obze060f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc31010_flt.fits</td>
                <td>HST/ocjc31010/ocjc31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc31020_flt.fits</td>
                <td>HST/ocjc31020/ocjc31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc31030_flt.fits</td>
                <td>HST/ocjc31030/ocjc31030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc32010_flt.fits</td>
                <td>HST/ocjc32010/ocjc32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc32020_flt.fits</td>
                <td>HST/ocjc32020/ocjc32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc32030_flt.fits</td>
                <td>HST/ocjc32030/ocjc32030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc33010_flt.fits</td>
                <td>HST/ocjc33010/ocjc33010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc33020_flt.fits</td>
                <td>HST/ocjc33020/ocjc33020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc33030_flt.fits</td>
                <td>HST/ocjc33030/ocjc33030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc34010_flt.fits</td>
                <td>HST/ocjc34010/ocjc34010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc34020_flt.fits</td>
                <td>HST/ocjc34020/ocjc34020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc34030_flt.fits</td>
                <td>HST/ocjc34030/ocjc34030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc35010_flt.fits</td>
                <td>HST/ocjc35010/ocjc35010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc35020_flt.fits</td>
                <td>HST/ocjc35020/ocjc35020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc35030_flt.fits</td>
                <td>HST/ocjc35030/ocjc35030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc36010_flt.fits</td>
                <td>HST/ocjc36010/ocjc36010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc36020_flt.fits</td>
                <td>HST/ocjc36020/ocjc36020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc36030_flt.fits</td>
                <td>HST/ocjc36030/ocjc36030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc37010_flt.fits</td>
                <td>HST/ocjc37010/ocjc37010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc37020_flt.fits</td>
                <td>HST/ocjc37020/ocjc37020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc37030_flt.fits</td>
                <td>HST/ocjc37030/ocjc37030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc38010_flt.fits</td>
                <td>HST/ocjc38010/ocjc38010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc38020_flt.fits</td>
                <td>HST/ocjc38020/ocjc38020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc38030_flt.fits</td>
                <td>HST/ocjc38030/ocjc38030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc41010_flt.fits</td>
                <td>HST/ocjc41010/ocjc41010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc41020_flt.fits</td>
                <td>HST/ocjc41020/ocjc41020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc41030_flt.fits</td>
                <td>HST/ocjc41030/ocjc41030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc42010_flt.fits</td>
                <td>HST/ocjc42010/ocjc42010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc42020_flt.fits</td>
                <td>HST/ocjc42020/ocjc42020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc42030_flt.fits</td>
                <td>HST/ocjc42030/ocjc42030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc43010_flt.fits</td>
                <td>HST/ocjc43010/ocjc43010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc43020_flt.fits</td>
                <td>HST/ocjc43020/ocjc43020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc43030_flt.fits</td>
                <td>HST/ocjc43030/ocjc43030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc44010_flt.fits</td>
                <td>HST/ocjc44010/ocjc44010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc44020_flt.fits</td>
                <td>HST/ocjc44020/ocjc44020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc44030_flt.fits</td>
                <td>HST/ocjc44030/ocjc44030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc45010_flt.fits</td>
                <td>HST/ocjc45010/ocjc45010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc45020_flt.fits</td>
                <td>HST/ocjc45020/ocjc45020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc45030_flt.fits</td>
                <td>HST/ocjc45030/ocjc45030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc46010_flt.fits</td>
                <td>HST/ocjc46010/ocjc46010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc46020_flt.fits</td>
                <td>HST/ocjc46020/ocjc46020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc46030_flt.fits</td>
                <td>HST/ocjc46030/ocjc46030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc47010_flt.fits</td>
                <td>HST/ocjc47010/ocjc47010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc47020_flt.fits</td>
                <td>HST/ocjc47020/ocjc47020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc47030_flt.fits</td>
                <td>HST/ocjc47030/ocjc47030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc48010_flt.fits</td>
                <td>HST/ocjc48010/ocjc48010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc48020_flt.fits</td>
                <td>HST/ocjc48020/ocjc48020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc48030_flt.fits</td>
                <td>HST/ocjc48030/ocjc48030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr05010_flt.fits</td>
                <td>HST/oclr05010/oclr05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr05020_flt.fits</td>
                <td>HST/oclr05020/oclr05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr06010_flt.fits</td>
                <td>HST/oclr06010/oclr06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr06020_flt.fits</td>
                <td>HST/oclr06020/oclr06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07010_flt.fits</td>
                <td>HST/oclr07010/oclr07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07020_flt.fits</td>
                <td>HST/oclr07020/oclr07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07030_flt.fits</td>
                <td>HST/oclr07030/oclr07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07040_flt.fits</td>
                <td>HST/oclr07040/oclr07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07050_flt.fits</td>
                <td>HST/oclr07050/oclr07050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07060_flt.fits</td>
                <td>HST/oclr07060/oclr07060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07070_flt.fits</td>
                <td>HST/oclr07070/oclr07070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr07080_flt.fits</td>
                <td>HST/oclr07080/oclr07080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr08010_flt.fits</td>
                <td>HST/oclr08010/oclr08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclr09010_flt.fits</td>
                <td>HST/oclr09010/oclr09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco601010_flt.fits</td>
                <td>HST/oco601010/oco601010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco601020_flt.fits</td>
                <td>HST/oco601020/oco601020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco601030_flt.fits</td>
                <td>HST/oco601030/oco601030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco602010_flt.fits</td>
                <td>HST/oco602010/oco602010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco602020_flt.fits</td>
                <td>HST/oco602020/oco602020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco602030_flt.fits</td>
                <td>HST/oco602030/oco602030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco603010_flt.fits</td>
                <td>HST/oco603010/oco603010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco603020_flt.fits</td>
                <td>HST/oco603020/oco603020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco603030_flt.fits</td>
                <td>HST/oco603030/oco603030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco604010_flt.fits</td>
                <td>HST/oco604010/oco604010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco604020_flt.fits</td>
                <td>HST/oco604020/oco604020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco604030_flt.fits</td>
                <td>HST/oco604030/oco604030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco605010_flt.fits</td>
                <td>HST/oco605010/oco605010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco605020_flt.fits</td>
                <td>HST/oco605020/oco605020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco605030_flt.fits</td>
                <td>HST/oco605030/oco605030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco606010_flt.fits</td>
                <td>HST/oco606010/oco606010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco606020_flt.fits</td>
                <td>HST/oco606020/oco606020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco606030_flt.fits</td>
                <td>HST/oco606030/oco606030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco607010_flt.fits</td>
                <td>HST/oco607010/oco607010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco607020_flt.fits</td>
                <td>HST/oco607020/oco607020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco607030_flt.fits</td>
                <td>HST/oco607030/oco607030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco608010_flt.fits</td>
                <td>HST/oco608010/oco608010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco608020_flt.fits</td>
                <td>HST/oco608020/oco608020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oco608030_flt.fits</td>
                <td>HST/oco608030/oco608030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01010_flt.fits</td>
                <td>HST/od0m01010/od0m01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01020_flt.fits</td>
                <td>HST/od0m01020/od0m01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01030_flt.fits</td>
                <td>HST/od0m01030/od0m01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01040_flt.fits</td>
                <td>HST/od0m01040/od0m01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01050_flt.fits</td>
                <td>HST/od0m01050/od0m01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01060_flt.fits</td>
                <td>HST/od0m01060/od0m01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01070_flt.fits</td>
                <td>HST/od0m01070/od0m01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01080_flt.fits</td>
                <td>HST/od0m01080/od0m01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m01090_flt.fits</td>
                <td>HST/od0m01090/od0m01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010a0_flt.fits</td>
                <td>HST/od0m010a0/od0m010a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010b0_flt.fits</td>
                <td>HST/od0m010b0/od0m010b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010c0_flt.fits</td>
                <td>HST/od0m010c0/od0m010c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010d0_flt.fits</td>
                <td>HST/od0m010d0/od0m010d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010e0_flt.fits</td>
                <td>HST/od0m010e0/od0m010e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010f0_flt.fits</td>
                <td>HST/od0m010f0/od0m010f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010g0_flt.fits</td>
                <td>HST/od0m010g0/od0m010g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010h0_flt.fits</td>
                <td>HST/od0m010h0/od0m010h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m010i0_flt.fits</td>
                <td>HST/od0m010i0/od0m010i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02010_flt.fits</td>
                <td>HST/od0m02010/od0m02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02020_flt.fits</td>
                <td>HST/od0m02020/od0m02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02030_flt.fits</td>
                <td>HST/od0m02030/od0m02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02040_flt.fits</td>
                <td>HST/od0m02040/od0m02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02050_flt.fits</td>
                <td>HST/od0m02050/od0m02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02060_flt.fits</td>
                <td>HST/od0m02060/od0m02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02070_flt.fits</td>
                <td>HST/od0m02070/od0m02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02080_flt.fits</td>
                <td>HST/od0m02080/od0m02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m02090_flt.fits</td>
                <td>HST/od0m02090/od0m02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020a0_flt.fits</td>
                <td>HST/od0m020a0/od0m020a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020b0_flt.fits</td>
                <td>HST/od0m020b0/od0m020b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020c0_flt.fits</td>
                <td>HST/od0m020c0/od0m020c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020d0_flt.fits</td>
                <td>HST/od0m020d0/od0m020d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020e0_flt.fits</td>
                <td>HST/od0m020e0/od0m020e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020f0_flt.fits</td>
                <td>HST/od0m020f0/od0m020f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020g0_flt.fits</td>
                <td>HST/od0m020g0/od0m020g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020h0_flt.fits</td>
                <td>HST/od0m020h0/od0m020h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m020i0_flt.fits</td>
                <td>HST/od0m020i0/od0m020i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03010_flt.fits</td>
                <td>HST/od0m03010/od0m03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03020_flt.fits</td>
                <td>HST/od0m03020/od0m03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03030_flt.fits</td>
                <td>HST/od0m03030/od0m03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03040_flt.fits</td>
                <td>HST/od0m03040/od0m03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03050_flt.fits</td>
                <td>HST/od0m03050/od0m03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03060_flt.fits</td>
                <td>HST/od0m03060/od0m03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03070_flt.fits</td>
                <td>HST/od0m03070/od0m03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03080_flt.fits</td>
                <td>HST/od0m03080/od0m03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m03090_flt.fits</td>
                <td>HST/od0m03090/od0m03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030a0_flt.fits</td>
                <td>HST/od0m030a0/od0m030a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030b0_flt.fits</td>
                <td>HST/od0m030b0/od0m030b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030c0_flt.fits</td>
                <td>HST/od0m030c0/od0m030c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030d0_flt.fits</td>
                <td>HST/od0m030d0/od0m030d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030e0_flt.fits</td>
                <td>HST/od0m030e0/od0m030e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030f0_flt.fits</td>
                <td>HST/od0m030f0/od0m030f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030g0_flt.fits</td>
                <td>HST/od0m030g0/od0m030g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030h0_flt.fits</td>
                <td>HST/od0m030h0/od0m030h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m030i0_flt.fits</td>
                <td>HST/od0m030i0/od0m030i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04010_flt.fits</td>
                <td>HST/od0m04010/od0m04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04020_flt.fits</td>
                <td>HST/od0m04020/od0m04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04030_flt.fits</td>
                <td>HST/od0m04030/od0m04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04040_flt.fits</td>
                <td>HST/od0m04040/od0m04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04050_flt.fits</td>
                <td>HST/od0m04050/od0m04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04060_flt.fits</td>
                <td>HST/od0m04060/od0m04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04070_flt.fits</td>
                <td>HST/od0m04070/od0m04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04080_flt.fits</td>
                <td>HST/od0m04080/od0m04080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m04090_flt.fits</td>
                <td>HST/od0m04090/od0m04090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040a0_flt.fits</td>
                <td>HST/od0m040a0/od0m040a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040b0_flt.fits</td>
                <td>HST/od0m040b0/od0m040b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040c0_flt.fits</td>
                <td>HST/od0m040c0/od0m040c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040d0_flt.fits</td>
                <td>HST/od0m040d0/od0m040d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040e0_flt.fits</td>
                <td>HST/od0m040e0/od0m040e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040f0_flt.fits</td>
                <td>HST/od0m040f0/od0m040f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040g0_flt.fits</td>
                <td>HST/od0m040g0/od0m040g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040h0_flt.fits</td>
                <td>HST/od0m040h0/od0m040h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m040i0_flt.fits</td>
                <td>HST/od0m040i0/od0m040i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05010_flt.fits</td>
                <td>HST/od0m05010/od0m05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05020_flt.fits</td>
                <td>HST/od0m05020/od0m05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05030_flt.fits</td>
                <td>HST/od0m05030/od0m05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05040_flt.fits</td>
                <td>HST/od0m05040/od0m05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05050_flt.fits</td>
                <td>HST/od0m05050/od0m05050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05060_flt.fits</td>
                <td>HST/od0m05060/od0m05060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05070_flt.fits</td>
                <td>HST/od0m05070/od0m05070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05080_flt.fits</td>
                <td>HST/od0m05080/od0m05080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m05090_flt.fits</td>
                <td>HST/od0m05090/od0m05090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050a0_flt.fits</td>
                <td>HST/od0m050a0/od0m050a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050b0_flt.fits</td>
                <td>HST/od0m050b0/od0m050b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050c0_flt.fits</td>
                <td>HST/od0m050c0/od0m050c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050d0_flt.fits</td>
                <td>HST/od0m050d0/od0m050d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050e0_flt.fits</td>
                <td>HST/od0m050e0/od0m050e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050f0_flt.fits</td>
                <td>HST/od0m050f0/od0m050f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050g0_flt.fits</td>
                <td>HST/od0m050g0/od0m050g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050h0_flt.fits</td>
                <td>HST/od0m050h0/od0m050h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m050i0_flt.fits</td>
                <td>HST/od0m050i0/od0m050i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06010_flt.fits</td>
                <td>HST/od0m06010/od0m06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06020_flt.fits</td>
                <td>HST/od0m06020/od0m06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06030_flt.fits</td>
                <td>HST/od0m06030/od0m06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06040_flt.fits</td>
                <td>HST/od0m06040/od0m06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06050_flt.fits</td>
                <td>HST/od0m06050/od0m06050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06060_flt.fits</td>
                <td>HST/od0m06060/od0m06060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06070_flt.fits</td>
                <td>HST/od0m06070/od0m06070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06080_flt.fits</td>
                <td>HST/od0m06080/od0m06080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m06090_flt.fits</td>
                <td>HST/od0m06090/od0m06090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060a0_flt.fits</td>
                <td>HST/od0m060a0/od0m060a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060b0_flt.fits</td>
                <td>HST/od0m060b0/od0m060b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060c0_flt.fits</td>
                <td>HST/od0m060c0/od0m060c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060d0_flt.fits</td>
                <td>HST/od0m060d0/od0m060d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060e0_flt.fits</td>
                <td>HST/od0m060e0/od0m060e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060f0_flt.fits</td>
                <td>HST/od0m060f0/od0m060f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060g0_flt.fits</td>
                <td>HST/od0m060g0/od0m060g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060h0_flt.fits</td>
                <td>HST/od0m060h0/od0m060h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m060i0_flt.fits</td>
                <td>HST/od0m060i0/od0m060i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07010_flt.fits</td>
                <td>HST/od0m07010/od0m07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07020_flt.fits</td>
                <td>HST/od0m07020/od0m07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07030_flt.fits</td>
                <td>HST/od0m07030/od0m07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07040_flt.fits</td>
                <td>HST/od0m07040/od0m07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07050_flt.fits</td>
                <td>HST/od0m07050/od0m07050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07060_flt.fits</td>
                <td>HST/od0m07060/od0m07060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07070_flt.fits</td>
                <td>HST/od0m07070/od0m07070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07080_flt.fits</td>
                <td>HST/od0m07080/od0m07080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m07090_flt.fits</td>
                <td>HST/od0m07090/od0m07090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070a0_flt.fits</td>
                <td>HST/od0m070a0/od0m070a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070b0_flt.fits</td>
                <td>HST/od0m070b0/od0m070b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070c0_flt.fits</td>
                <td>HST/od0m070c0/od0m070c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070d0_flt.fits</td>
                <td>HST/od0m070d0/od0m070d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070e0_flt.fits</td>
                <td>HST/od0m070e0/od0m070e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070f0_flt.fits</td>
                <td>HST/od0m070f0/od0m070f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070g0_flt.fits</td>
                <td>HST/od0m070g0/od0m070g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070h0_flt.fits</td>
                <td>HST/od0m070h0/od0m070h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m070i0_flt.fits</td>
                <td>HST/od0m070i0/od0m070i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08010_flt.fits</td>
                <td>HST/od0m08010/od0m08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08020_flt.fits</td>
                <td>HST/od0m08020/od0m08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08030_flt.fits</td>
                <td>HST/od0m08030/od0m08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08040_flt.fits</td>
                <td>HST/od0m08040/od0m08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08050_flt.fits</td>
                <td>HST/od0m08050/od0m08050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08060_flt.fits</td>
                <td>HST/od0m08060/od0m08060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08070_flt.fits</td>
                <td>HST/od0m08070/od0m08070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08080_flt.fits</td>
                <td>HST/od0m08080/od0m08080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m08090_flt.fits</td>
                <td>HST/od0m08090/od0m08090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080a0_flt.fits</td>
                <td>HST/od0m080a0/od0m080a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080b0_flt.fits</td>
                <td>HST/od0m080b0/od0m080b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080c0_flt.fits</td>
                <td>HST/od0m080c0/od0m080c0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080d0_flt.fits</td>
                <td>HST/od0m080d0/od0m080d0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080e0_flt.fits</td>
                <td>HST/od0m080e0/od0m080e0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080f0_flt.fits</td>
                <td>HST/od0m080f0/od0m080f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080g0_flt.fits</td>
                <td>HST/od0m080g0/od0m080g0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080h0_flt.fits</td>
                <td>HST/od0m080h0/od0m080h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od0m080i0_flt.fits</td>
                <td>HST/od0m080i0/od0m080i0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku01010_flt.fits</td>
                <td>HST/odku01010/odku01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku02010_flt.fits</td>
                <td>HST/odku02010/odku02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku03010_flt.fits</td>
                <td>HST/odku03010/odku03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku04010_flt.fits</td>
                <td>HST/odku04010/odku04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku05010_flt.fits</td>
                <td>HST/odku05010/odku05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odku06010_flt.fits</td>
                <td>HST/odku06010/odku06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkz01010_flt.fits</td>
                <td>HST/odkz01010/odkz01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkz02010_flt.fits</td>
                <td>HST/odkz02010/odkz02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oduj07010_flt.fits</td>
                <td>HST/oduj07010/oduj07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oduj09010_flt.fits</td>
                <td>HST/oduj09010/oduj09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oduj10010_flt.fits</td>
                <td>HST/oduj10010/oduj10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy01010_flt.fits</td>
                <td>HST/odxy01010/odxy01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy02010_flt.fits</td>
                <td>HST/odxy02010/odxy02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy03010_flt.fits</td>
                <td>HST/odxy03010/odxy03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy04010_flt.fits</td>
                <td>HST/odxy04010/odxy04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy05010_flt.fits</td>
                <td>HST/odxy05010/odxy05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy06010_flt.fits</td>
                <td>HST/odxy06010/odxy06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy07010_flt.fits</td>
                <td>HST/odxy07010/odxy07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy08010_flt.fits</td>
                <td>HST/odxy08010/odxy08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy09010_flt.fits</td>
                <td>HST/odxy09010/odxy09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy10010_flt.fits</td>
                <td>HST/odxy10010/odxy10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy11010_flt.fits</td>
                <td>HST/odxy11010/odxy11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy12010_flt.fits</td>
                <td>HST/odxy12010/odxy12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy13010_flt.fits</td>
                <td>HST/odxy13010/odxy13010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy14010_flt.fits</td>
                <td>HST/odxy14010/odxy14010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy15010_flt.fits</td>
                <td>HST/odxy15010/odxy15010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy16010_flt.fits</td>
                <td>HST/odxy16010/odxy16010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy17010_flt.fits</td>
                <td>HST/odxy17010/odxy17010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy18010_flt.fits</td>
                <td>HST/odxy18010/odxy18010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy19010_flt.fits</td>
                <td>HST/odxy19010/odxy19010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy20010_flt.fits</td>
                <td>HST/odxy20010/odxy20010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy21010_flt.fits</td>
                <td>HST/odxy21010/odxy21010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy22010_flt.fits</td>
                <td>HST/odxy22010/odxy22010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy23010_flt.fits</td>
                <td>HST/odxy23010/odxy23010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy24010_flt.fits</td>
                <td>HST/odxy24010/odxy24010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy25010_flt.fits</td>
                <td>HST/odxy25010/odxy25010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy26010_flt.fits</td>
                <td>HST/odxy26010/odxy26010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy27010_flt.fits</td>
                <td>HST/odxy27010/odxy27010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy28010_flt.fits</td>
                <td>HST/odxy28010/odxy28010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy29010_flt.fits</td>
                <td>HST/odxy29010/odxy29010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy30010_flt.fits</td>
                <td>HST/odxy30010/odxy30010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy31010_flt.fits</td>
                <td>HST/odxy31010/odxy31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy32010_flt.fits</td>
                <td>HST/odxy32010/odxy32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy33010_flt.fits</td>
                <td>HST/odxy33010/odxy33010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy34010_flt.fits</td>
                <td>HST/odxy34010/odxy34010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy35010_flt.fits</td>
                <td>HST/odxy35010/odxy35010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy36010_flt.fits</td>
                <td>HST/odxy36010/odxy36010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy37010_flt.fits</td>
                <td>HST/odxy37010/odxy37010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy38010_flt.fits</td>
                <td>HST/odxy38010/odxy38010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy39010_flt.fits</td>
                <td>HST/odxy39010/odxy39010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy40010_flt.fits</td>
                <td>HST/odxy40010/odxy40010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy53010_flt.fits</td>
                <td>HST/odxy53010/odxy53010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy54010_flt.fits</td>
                <td>HST/odxy54010/odxy54010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy55010_flt.fits</td>
                <td>HST/odxy55010/odxy55010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy56010_flt.fits</td>
                <td>HST/odxy56010/odxy56010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01010_flt.fits</td>
                <td>HST/oehw01010/oehw01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01020_flt.fits</td>
                <td>HST/oehw01020/oehw01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01030_flt.fits</td>
                <td>HST/oehw01030/oehw01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01040_flt.fits</td>
                <td>HST/oehw01040/oehw01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01050_flt.fits</td>
                <td>HST/oehw01050/oehw01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01060_flt.fits</td>
                <td>HST/oehw01060/oehw01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01070_flt.fits</td>
                <td>HST/oehw01070/oehw01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01080_flt.fits</td>
                <td>HST/oehw01080/oehw01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw01090_flt.fits</td>
                <td>HST/oehw01090/oehw01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02010_flt.fits</td>
                <td>HST/oehw02010/oehw02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02020_flt.fits</td>
                <td>HST/oehw02020/oehw02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02030_flt.fits</td>
                <td>HST/oehw02030/oehw02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02040_flt.fits</td>
                <td>HST/oehw02040/oehw02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02050_flt.fits</td>
                <td>HST/oehw02050/oehw02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02060_flt.fits</td>
                <td>HST/oehw02060/oehw02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02070_flt.fits</td>
                <td>HST/oehw02070/oehw02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02080_flt.fits</td>
                <td>HST/oehw02080/oehw02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw02090_flt.fits</td>
                <td>HST/oehw02090/oehw02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03010_flt.fits</td>
                <td>HST/oehw03010/oehw03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03020_flt.fits</td>
                <td>HST/oehw03020/oehw03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03030_flt.fits</td>
                <td>HST/oehw03030/oehw03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03040_flt.fits</td>
                <td>HST/oehw03040/oehw03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03050_flt.fits</td>
                <td>HST/oehw03050/oehw03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03060_flt.fits</td>
                <td>HST/oehw03060/oehw03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03070_flt.fits</td>
                <td>HST/oehw03070/oehw03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03080_flt.fits</td>
                <td>HST/oehw03080/oehw03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw03090_flt.fits</td>
                <td>HST/oehw03090/oehw03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04010_flt.fits</td>
                <td>HST/oehw04010/oehw04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04020_flt.fits</td>
                <td>HST/oehw04020/oehw04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04030_flt.fits</td>
                <td>HST/oehw04030/oehw04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04040_flt.fits</td>
                <td>HST/oehw04040/oehw04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04050_flt.fits</td>
                <td>HST/oehw04050/oehw04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04060_flt.fits</td>
                <td>HST/oehw04060/oehw04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04070_flt.fits</td>
                <td>HST/oehw04070/oehw04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04080_flt.fits</td>
                <td>HST/oehw04080/oehw04080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw04090_flt.fits</td>
                <td>HST/oehw04090/oehw04090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11010_flt.fits</td>
                <td>HST/oehw11010/oehw11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11020_flt.fits</td>
                <td>HST/oehw11020/oehw11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11030_flt.fits</td>
                <td>HST/oehw11030/oehw11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11040_flt.fits</td>
                <td>HST/oehw11040/oehw11040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11050_flt.fits</td>
                <td>HST/oehw11050/oehw11050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11060_flt.fits</td>
                <td>HST/oehw11060/oehw11060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11070_flt.fits</td>
                <td>HST/oehw11070/oehw11070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11080_flt.fits</td>
                <td>HST/oehw11080/oehw11080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw11090_flt.fits</td>
                <td>HST/oehw11090/oehw11090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12010_flt.fits</td>
                <td>HST/oehw12010/oehw12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12020_flt.fits</td>
                <td>HST/oehw12020/oehw12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12030_flt.fits</td>
                <td>HST/oehw12030/oehw12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12040_flt.fits</td>
                <td>HST/oehw12040/oehw12040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12050_flt.fits</td>
                <td>HST/oehw12050/oehw12050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12060_flt.fits</td>
                <td>HST/oehw12060/oehw12060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12070_flt.fits</td>
                <td>HST/oehw12070/oehw12070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12080_flt.fits</td>
                <td>HST/oehw12080/oehw12080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw12090_flt.fits</td>
                <td>HST/oehw12090/oehw12090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13010_flt.fits</td>
                <td>HST/oehw13010/oehw13010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13020_flt.fits</td>
                <td>HST/oehw13020/oehw13020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13030_flt.fits</td>
                <td>HST/oehw13030/oehw13030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13040_flt.fits</td>
                <td>HST/oehw13040/oehw13040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13050_flt.fits</td>
                <td>HST/oehw13050/oehw13050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13060_flt.fits</td>
                <td>HST/oehw13060/oehw13060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13070_flt.fits</td>
                <td>HST/oehw13070/oehw13070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13080_flt.fits</td>
                <td>HST/oehw13080/oehw13080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw13090_flt.fits</td>
                <td>HST/oehw13090/oehw13090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14010_flt.fits</td>
                <td>HST/oehw14010/oehw14010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14020_flt.fits</td>
                <td>HST/oehw14020/oehw14020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14030_flt.fits</td>
                <td>HST/oehw14030/oehw14030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14040_flt.fits</td>
                <td>HST/oehw14040/oehw14040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14050_flt.fits</td>
                <td>HST/oehw14050/oehw14050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14060_flt.fits</td>
                <td>HST/oehw14060/oehw14060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14070_flt.fits</td>
                <td>HST/oehw14070/oehw14070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14080_flt.fits</td>
                <td>HST/oehw14080/oehw14080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw14090_flt.fits</td>
                <td>HST/oehw14090/oehw14090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15010_flt.fits</td>
                <td>HST/oehw15010/oehw15010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15020_flt.fits</td>
                <td>HST/oehw15020/oehw15020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15030_flt.fits</td>
                <td>HST/oehw15030/oehw15030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15040_flt.fits</td>
                <td>HST/oehw15040/oehw15040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15050_flt.fits</td>
                <td>HST/oehw15050/oehw15050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15060_flt.fits</td>
                <td>HST/oehw15060/oehw15060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15070_flt.fits</td>
                <td>HST/oehw15070/oehw15070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15080_flt.fits</td>
                <td>HST/oehw15080/oehw15080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw15090_flt.fits</td>
                <td>HST/oehw15090/oehw15090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16010_flt.fits</td>
                <td>HST/oehw16010/oehw16010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16020_flt.fits</td>
                <td>HST/oehw16020/oehw16020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16030_flt.fits</td>
                <td>HST/oehw16030/oehw16030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16040_flt.fits</td>
                <td>HST/oehw16040/oehw16040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16050_flt.fits</td>
                <td>HST/oehw16050/oehw16050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16060_flt.fits</td>
                <td>HST/oehw16060/oehw16060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16070_flt.fits</td>
                <td>HST/oehw16070/oehw16070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16080_flt.fits</td>
                <td>HST/oehw16080/oehw16080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oehw16090_flt.fits</td>
                <td>HST/oehw16090/oehw16090_flt.fits</td>
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
<<< Downloading File: mast:HST/product/o3y0010t0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0010t0/o3y0010t0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0010t0/o3y0010t0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o3y0010t0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0010v0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0010v0/o3y0010v0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0010v0/o3y0010v0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o3y0010v0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020t0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0020t0/o3y0020t0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0020t0/o3y0020t0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o3y0020t0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020v0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y0020v0/o3y0020v0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y0020v0/o3y0020v0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o3y0020v0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40601060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40601060/o40601060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40601060/o40601060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o40601060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01080/o43f01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01080/o43f01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o43f01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01090/o43f01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01090/o43f01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o43f01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx02010/o6lx02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx02010/o6lx02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o6lx02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx02020/o6lx02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx02020/o6lx02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o6lx02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx03010/o6lx03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx03010/o6lx03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o6lx03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6lx03020/o6lx03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6lx03020/o6lx03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/o6lx03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7913010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7913010/ob7913010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7913010/ob7913010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ob7913010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7914010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7914010/ob7914010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7914010/ob7914010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ob7914010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7915010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7915010/ob7915010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7915010/ob7915010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ob7915010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01010/obze01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01010/obze01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01020/obze01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01020/obze01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01030/obze01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01030/obze01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01040/obze01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01040/obze01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01050/obze01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01050/obze01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01060/obze01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01060/obze01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01070/obze01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01070/obze01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01080/obze01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01080/obze01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze01090/obze01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze01090/obze01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010a0/obze010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010a0/obze010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010b0/obze010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010b0/obze010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010c0/obze010c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010c0/obze010c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010d0/obze010d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010d0/obze010d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010e0/obze010e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010e0/obze010e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010f0/obze010f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010f0/obze010f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010g0/obze010g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010g0/obze010g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010h0/obze010h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010h0/obze010h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010i0/obze010i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010i0/obze010i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze010j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze010j0/obze010j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze010j0/obze010j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze010j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02010/obze02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02010/obze02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02020/obze02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02020/obze02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02030/obze02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02030/obze02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02040/obze02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02040/obze02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02050/obze02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02050/obze02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02060/obze02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02060/obze02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02070/obze02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02070/obze02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02080/obze02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02080/obze02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze02090/obze02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze02090/obze02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020a0/obze020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020a0/obze020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020b0/obze020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020b0/obze020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020c0/obze020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020c0/obze020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020d0/obze020d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020d0/obze020d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020e0/obze020e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020e0/obze020e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020f0/obze020f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020f0/obze020f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020g0/obze020g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020g0/obze020g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020h0/obze020h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020h0/obze020h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020i0/obze020i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020i0/obze020i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze020j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze020j0/obze020j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze020j0/obze020j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze020j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03010/obze03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03010/obze03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03020/obze03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03020/obze03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03030/obze03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03030/obze03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03040/obze03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03040/obze03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03050/obze03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03050/obze03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03060/obze03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03060/obze03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03070/obze03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03070/obze03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03080/obze03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03080/obze03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze03090/obze03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze03090/obze03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030a0/obze030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030a0/obze030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030b0/obze030b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030b0/obze030b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030c0/obze030c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030c0/obze030c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030d0/obze030d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030d0/obze030d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030e0/obze030e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030e0/obze030e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030f0/obze030f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030f0/obze030f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030g0/obze030g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030g0/obze030g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030h0/obze030h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030h0/obze030h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030i0/obze030i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030i0/obze030i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze030j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze030j0/obze030j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze030j0/obze030j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze030j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04010/obze04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04010/obze04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04020/obze04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04020/obze04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04030/obze04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04030/obze04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04040/obze04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04040/obze04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04050/obze04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04050/obze04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04060/obze04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04060/obze04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04070/obze04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04070/obze04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04080/obze04080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04080/obze04080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze04090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze04090/obze04090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze04090/obze04090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze04090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040a0/obze040a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040a0/obze040a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040b0/obze040b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040b0/obze040b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040c0/obze040c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040c0/obze040c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040d0/obze040d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040d0/obze040d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040e0/obze040e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040e0/obze040e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze040f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze040f0/obze040f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze040f0/obze040f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze040f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05010/obze05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05010/obze05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05020/obze05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05020/obze05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05030/obze05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05030/obze05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05040/obze05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05040/obze05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05050/obze05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05050/obze05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05060/obze05060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05060/obze05060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05070/obze05070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05070/obze05070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05080/obze05080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05080/obze05080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze05090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze05090/obze05090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze05090/obze05090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze05090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050a0/obze050a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050a0/obze050a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050b0/obze050b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050b0/obze050b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050c0/obze050c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050c0/obze050c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050d0/obze050d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050d0/obze050d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050e0/obze050e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050e0/obze050e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy56010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy56010/odxy56010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy56010/odxy56010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy56010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01010/oehw01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01010/oehw01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01020/oehw01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01020/oehw01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01030/oehw01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01030/oehw01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01040/oehw01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01040/oehw01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01050/oehw01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01050/oehw01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01060/oehw01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01060/oehw01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01070/oehw01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01070/oehw01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01080/oehw01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01080/oehw01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw01090/oehw01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw01090/oehw01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02010/oehw02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02010/oehw02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02020/oehw02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02020/oehw02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02030/oehw02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02030/oehw02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02040/oehw02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02040/oehw02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02050/oehw02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02050/oehw02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02060/oehw02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02060/oehw02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02070/oehw02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02070/oehw02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02080/oehw02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02080/oehw02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw02090/oehw02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw02090/oehw02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03010/oehw03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03010/oehw03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03020/oehw03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03020/oehw03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03030/oehw03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03030/oehw03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03040/oehw03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03040/oehw03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03050/oehw03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03050/oehw03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03060/oehw03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03060/oehw03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03070/oehw03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03070/oehw03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03080/oehw03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03080/oehw03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw03090/oehw03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw03090/oehw03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04010/oehw04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04010/oehw04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04020/oehw04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04020/oehw04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04030/oehw04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04030/oehw04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04040/oehw04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04040/oehw04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04050/oehw04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04050/oehw04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04060/oehw04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04060/oehw04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04070/oehw04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04070/oehw04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04080/oehw04080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04080/oehw04080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw04090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw04090/oehw04090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw04090/oehw04090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw04090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11010/oehw11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11010/oehw11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11020/oehw11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11020/oehw11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11030/oehw11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11030/oehw11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11040/oehw11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11040/oehw11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11050/oehw11050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11050/oehw11050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11060/oehw11060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11060/oehw11060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11070/oehw11070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11070/oehw11070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11080/oehw11080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11080/oehw11080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw11090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw11090/oehw11090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw11090/oehw11090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw11090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12010/oehw12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12010/oehw12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12020/oehw12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12020/oehw12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12030/oehw12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12030/oehw12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12040/oehw12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12040/oehw12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12050/oehw12050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12050/oehw12050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12060/oehw12060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12060/oehw12060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12070/oehw12070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12070/oehw12070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12080/oehw12080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12080/oehw12080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw12090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw12090/oehw12090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw12090/oehw12090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw12090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13010/oehw13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13010/oehw13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13020/oehw13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13020/oehw13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13030/oehw13030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13030/oehw13030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13040/oehw13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13040/oehw13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13050/oehw13050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13050/oehw13050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13060/oehw13060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13060/oehw13060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13070/oehw13070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13070/oehw13070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13080/oehw13080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13080/oehw13080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw13090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw13090/oehw13090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw13090/oehw13090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw13090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14010/oehw14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14010/oehw14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14020/oehw14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14020/oehw14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14030/oehw14030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14030/oehw14030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14040/oehw14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14040/oehw14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14050/oehw14050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14050/oehw14050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14060/oehw14060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14060/oehw14060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14070/oehw14070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14070/oehw14070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14080/oehw14080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14080/oehw14080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw14090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw14090/oehw14090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw14090/oehw14090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw14090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15010/oehw15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15010/oehw15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15020/oehw15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15020/oehw15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15030/oehw15030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15030/oehw15030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15040/oehw15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15040/oehw15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15050/oehw15050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15050/oehw15050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15060/oehw15060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15060/oehw15060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15070/oehw15070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15070/oehw15070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15080/oehw15080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15080/oehw15080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw15090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw15090/oehw15090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw15090/oehw15090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw15090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16010/oehw16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16010/oehw16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16020/oehw16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16020/oehw16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16030/oehw16030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16030/oehw16030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16040/oehw16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16040/oehw16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16050/oehw16050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16050/oehw16050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16060/oehw16060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16060/oehw16060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16070/oehw16070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16070/oehw16070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16080/oehw16080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16080/oehw16080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oehw16090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oehw16090/oehw16090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oehw16090/oehw16090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oehw16090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco608020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco608020/oco608020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco608020/oco608020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco608020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco608030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco608030/oco608030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco608030/oco608030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco608030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01010/od0m01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01010/od0m01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01020/od0m01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01020/od0m01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01030/od0m01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01030/od0m01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01040/od0m01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01040/od0m01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01050/od0m01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01050/od0m01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01060/od0m01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01060/od0m01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01070/od0m01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01070/od0m01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01080/od0m01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01080/od0m01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m01090/od0m01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m01090/od0m01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010a0/od0m010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010a0/od0m010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010b0/od0m010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010b0/od0m010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010c0/od0m010c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010c0/od0m010c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010d0/od0m010d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010d0/od0m010d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010e0/od0m010e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010e0/od0m010e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010f0/od0m010f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010f0/od0m010f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010g0/od0m010g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010g0/od0m010g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010h0/od0m010h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010h0/od0m010h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m010i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m010i0/od0m010i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m010i0/od0m010i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m010i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02010/od0m02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02010/od0m02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02020/od0m02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02020/od0m02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02030/od0m02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02030/od0m02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02040/od0m02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02040/od0m02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02050/od0m02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02050/od0m02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02060/od0m02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02060/od0m02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02070/od0m02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02070/od0m02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02080/od0m02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02080/od0m02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m02090/od0m02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m02090/od0m02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020a0/od0m020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020a0/od0m020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020b0/od0m020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020b0/od0m020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020c0/od0m020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020c0/od0m020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020d0/od0m020d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020d0/od0m020d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020e0/od0m020e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020e0/od0m020e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020f0/od0m020f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020f0/od0m020f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020g0/od0m020g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020g0/od0m020g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020h0/od0m020h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020h0/od0m020h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m020i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m020i0/od0m020i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m020i0/od0m020i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m020i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03010/od0m03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03010/od0m03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03020/od0m03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03020/od0m03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03030/od0m03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03030/od0m03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03040/od0m03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03040/od0m03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03050/od0m03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03050/od0m03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03060/od0m03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03060/od0m03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03070/od0m03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03070/od0m03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03080/od0m03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03080/od0m03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m03090/od0m03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m03090/od0m03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030a0/od0m030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030a0/od0m030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030b0/od0m030b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030b0/od0m030b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030c0/od0m030c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030c0/od0m030c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030d0/od0m030d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030d0/od0m030d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030e0/od0m030e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030e0/od0m030e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030f0/od0m030f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030f0/od0m030f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030g0/od0m030g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030g0/od0m030g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030h0/od0m030h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030h0/od0m030h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m030i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m030i0/od0m030i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m030i0/od0m030i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m030i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04010/od0m04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04010/od0m04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04020/od0m04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04020/od0m04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04030/od0m04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04030/od0m04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04040/od0m04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04040/od0m04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04050/od0m04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04050/od0m04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04060/od0m04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04060/od0m04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04070/od0m04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04070/od0m04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04080/od0m04080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04080/od0m04080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m04090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m04090/od0m04090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m04090/od0m04090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m04090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040a0/od0m040a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040a0/od0m040a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040b0/od0m040b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040b0/od0m040b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040c0/od0m040c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040c0/od0m040c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040d0/od0m040d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040d0/od0m040d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040e0/od0m040e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040e0/od0m040e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040f0/od0m040f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040f0/od0m040f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040g0/od0m040g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040g0/od0m040g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040h0/od0m040h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040h0/od0m040h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m040i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m040i0/od0m040i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m040i0/od0m040i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m040i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05010/od0m05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05010/od0m05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05020/od0m05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05020/od0m05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05030/od0m05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05030/od0m05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05040/od0m05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05040/od0m05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05050/od0m05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05050/od0m05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05060/od0m05060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05060/od0m05060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05070/od0m05070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05070/od0m05070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05080/od0m05080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05080/od0m05080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m05090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m05090/od0m05090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m05090/od0m05090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m05090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050a0/od0m050a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050a0/od0m050a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050b0/od0m050b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050b0/od0m050b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050c0/od0m050c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050c0/od0m050c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050d0/od0m050d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050d0/od0m050d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050e0/od0m050e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050e0/od0m050e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050f0/od0m050f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050f0/od0m050f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050g0/od0m050g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050g0/od0m050g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050h0/od0m050h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050h0/od0m050h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m050i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m050i0/od0m050i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m050i0/od0m050i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m050i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06010/od0m06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06010/od0m06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06020/od0m06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06020/od0m06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06030/od0m06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06030/od0m06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06040/od0m06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06040/od0m06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06050/od0m06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06050/od0m06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06060/od0m06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06060/od0m06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06070/od0m06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06070/od0m06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06080/od0m06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06080/od0m06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze050f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze050f0/obze050f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze050f0/obze050f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze050f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06010/obze06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06010/obze06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06020/obze06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06020/obze06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06030/obze06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06030/obze06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06040/obze06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06040/obze06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06050/obze06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06050/obze06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06060/obze06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06060/obze06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06070/obze06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06070/obze06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06080/obze06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06080/obze06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze06090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze06090/obze06090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze06090/obze06090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze06090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060a0/obze060a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060a0/obze060a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060b0/obze060b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060b0/obze060b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060c0/obze060c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060c0/obze060c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060d0/obze060d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060d0/obze060d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060e0/obze060e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060e0/obze060e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obze060f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obze060f0/obze060f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obze060f0/obze060f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/obze060f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc31010/ocjc31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc31010/ocjc31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc31020/ocjc31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc31020/ocjc31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc31030/ocjc31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc31030/ocjc31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc32010/ocjc32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc32010/ocjc32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc32020/ocjc32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc32020/ocjc32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc32030/ocjc32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc32030/ocjc32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc33010/ocjc33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc33010/ocjc33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc33020/ocjc33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc33020/ocjc33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc33030/ocjc33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc33030/ocjc33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc34010/ocjc34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc34010/ocjc34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc34020/ocjc34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc34020/ocjc34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc34030/ocjc34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc34030/ocjc34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc35010/ocjc35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc35010/ocjc35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc35020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc35020/ocjc35020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc35020/ocjc35020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc35020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc35030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc35030/ocjc35030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc35030/ocjc35030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc35030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc36010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc36010/ocjc36010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc36010/ocjc36010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc36010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc36020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc36020/ocjc36020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc36020/ocjc36020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc36020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc36030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc36030/ocjc36030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc36030/ocjc36030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc36030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc37010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc37010/ocjc37010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc37010/ocjc37010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc37010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc37020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc37020/ocjc37020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc37020/ocjc37020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc37020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc37030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc37030/ocjc37030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc37030/ocjc37030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc37030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc38010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc38010/ocjc38010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc38010/ocjc38010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc38010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc38020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc38020/ocjc38020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc38020/ocjc38020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc38020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc38030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc38030/ocjc38030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc38030/ocjc38030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc38030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc41010/ocjc41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc41010/ocjc41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc41020/ocjc41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc41020/ocjc41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc41030/ocjc41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc41030/ocjc41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc42010/ocjc42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc42010/ocjc42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc42020/ocjc42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc42020/ocjc42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc42030/ocjc42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc42030/ocjc42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc43010/ocjc43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc43010/ocjc43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc43020/ocjc43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc43020/ocjc43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc43030/ocjc43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc43030/ocjc43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc44010/ocjc44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc44010/ocjc44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc44020/ocjc44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc44020/ocjc44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc44030/ocjc44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc44030/ocjc44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc45010/ocjc45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc45010/ocjc45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc45020/ocjc45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc45020/ocjc45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc45030/ocjc45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc45030/ocjc45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc46010/ocjc46010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc46010/ocjc46010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc46010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc46020/ocjc46020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc46020/ocjc46020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc46020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc46030/ocjc46030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc46030/ocjc46030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc46030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc47010/ocjc47010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc47010/ocjc47010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc47010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc47020/ocjc47020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc47020/ocjc47020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc47020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc47030/ocjc47030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc47030/ocjc47030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc47030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc48010/ocjc48010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc48010/ocjc48010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc48010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc48020/ocjc48020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc48020/ocjc48020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc48020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc48030/ocjc48030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc48030/ocjc48030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/ocjc48030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr05010/oclr05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr05010/oclr05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr05020/oclr05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr05020/oclr05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr06010/oclr06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr06010/oclr06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr06020/oclr06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr06020/oclr06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07010/oclr07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07010/oclr07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07020/oclr07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07020/oclr07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07030/oclr07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07030/oclr07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07040/oclr07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07040/oclr07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07050/oclr07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07050/oclr07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07060/oclr07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07060/oclr07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07070/oclr07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07070/oclr07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr07080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr07080/oclr07080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr07080/oclr07080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr07080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr08010/oclr08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr08010/oclr08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclr09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclr09010/oclr09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclr09010/oclr09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oclr09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco601010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco601010/oco601010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco601010/oco601010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco601010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco601020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco601020/oco601020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco601020/oco601020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco601020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco601030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco601030/oco601030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco601030/oco601030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco601030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco602010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco602010/oco602010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco602010/oco602010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco602010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco602020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco602020/oco602020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco602020/oco602020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco602020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco602030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco602030/oco602030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco602030/oco602030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco602030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603010/oco603010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603010/oco603010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco603010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603020/oco603020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603020/oco603020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco603020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco603030/oco603030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco603030/oco603030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco603030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco604010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco604010/oco604010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco604010/oco604010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco604010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco604020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco604020/oco604020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco604020/oco604020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco604020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco604030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco604030/oco604030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco604030/oco604030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco604030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco605010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco605010/oco605010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco605010/oco605010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco605010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco605020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco605020/oco605020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco605020/oco605020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco605020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco605030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco605030/oco605030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco605030/oco605030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco605030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco606010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco606010/oco606010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco606010/oco606010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco606010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco606020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco606020/oco606020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco606020/oco606020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco606020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco606030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco606030/oco606030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco606030/oco606030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco606030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607010/oco607010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607010/oco607010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco607010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607020/oco607020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607020/oco607020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco607020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco607030/oco607030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco607030/oco607030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco607030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco608010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oco608010/oco608010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oco608010/oco608010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oco608010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m06090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m06090/od0m06090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m06090/od0m06090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m06090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060a0/od0m060a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060a0/od0m060a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060b0/od0m060b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060b0/od0m060b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060c0/od0m060c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060c0/od0m060c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060d0/od0m060d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060d0/od0m060d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060e0/od0m060e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060e0/od0m060e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060f0/od0m060f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060f0/od0m060f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060g0/od0m060g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060g0/od0m060g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060h0/od0m060h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060h0/od0m060h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m060i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m060i0/od0m060i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m060i0/od0m060i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m060i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07010/od0m07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07010/od0m07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07020/od0m07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07020/od0m07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07030/od0m07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07030/od0m07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07040/od0m07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07040/od0m07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07050/od0m07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07050/od0m07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07060/od0m07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07060/od0m07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07070/od0m07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07070/od0m07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07080/od0m07080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07080/od0m07080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m07090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m07090/od0m07090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m07090/od0m07090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m07090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070a0/od0m070a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070a0/od0m070a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070b0/od0m070b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070b0/od0m070b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070c0/od0m070c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070c0/od0m070c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070d0/od0m070d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070d0/od0m070d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070e0/od0m070e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070e0/od0m070e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070f0/od0m070f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070f0/od0m070f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070g0/od0m070g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070g0/od0m070g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070h0/od0m070h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070h0/od0m070h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m070i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m070i0/od0m070i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m070i0/od0m070i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m070i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08010/od0m08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08010/od0m08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08020/od0m08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08020/od0m08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08030/od0m08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08030/od0m08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08040/od0m08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08040/od0m08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08050/od0m08050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08050/od0m08050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08060/od0m08060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08060/od0m08060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08070/od0m08070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08070/od0m08070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08080/od0m08080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08080/od0m08080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m08090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m08090/od0m08090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m08090/od0m08090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m08090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080a0/od0m080a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080a0/od0m080a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080b0/od0m080b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080b0/od0m080b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080c0/od0m080c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080c0/od0m080c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080d0/od0m080d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080d0/od0m080d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080e0/od0m080e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080e0/od0m080e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080f0/od0m080f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080f0/od0m080f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080g0/od0m080g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080g0/od0m080g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080h0/od0m080h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080h0/od0m080h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od0m080i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od0m080i0/od0m080i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od0m080i0/od0m080i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/od0m080i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku01010/odku01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku01010/odku01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku02010/odku02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku02010/odku02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku03010/odku03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku03010/odku03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku04010/odku04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku04010/odku04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku05010/odku05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku05010/odku05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odku06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odku06010/odku06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odku06010/odku06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odku06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkz01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkz01010/odkz01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkz01010/odkz01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odkz01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkz02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkz02010/odkz02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkz02010/odkz02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odkz02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oduj07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oduj07010/oduj07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oduj07010/oduj07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oduj07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oduj09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oduj09010/oduj09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oduj09010/oduj09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oduj09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oduj10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oduj10010/oduj10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oduj10010/oduj10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/oduj10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy01010/odxy01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy01010/odxy01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy02010/odxy02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy02010/odxy02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy03010/odxy03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy03010/odxy03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy04010/odxy04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy04010/odxy04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy05010/odxy05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy05010/odxy05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy06010/odxy06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy06010/odxy06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy07010/odxy07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy07010/odxy07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy08010/odxy08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy08010/odxy08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy09010/odxy09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy09010/odxy09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy10010/odxy10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy10010/odxy10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy11010/odxy11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy11010/odxy11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy12010/odxy12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy12010/odxy12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy13010/odxy13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy13010/odxy13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy14010/odxy14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy14010/odxy14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy15010/odxy15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy15010/odxy15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy16010/odxy16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy16010/odxy16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy17010/odxy17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy17010/odxy17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy18010/odxy18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy18010/odxy18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy19010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy19010/odxy19010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy19010/odxy19010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy19010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy20010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy20010/odxy20010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy20010/odxy20010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy20010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy21010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy21010/odxy21010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy21010/odxy21010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy21010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy22010/odxy22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy22010/odxy22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy23010/odxy23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy23010/odxy23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy24010/odxy24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy24010/odxy24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy25010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy25010/odxy25010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy25010/odxy25010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy25010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy26010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy26010/odxy26010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy26010/odxy26010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy26010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy27010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy27010/odxy27010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy27010/odxy27010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy27010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy28010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy28010/odxy28010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy28010/odxy28010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy28010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy29010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy29010/odxy29010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy29010/odxy29010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy29010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy30010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy30010/odxy30010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy30010/odxy30010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy30010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy31010/odxy31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy31010/odxy31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy32010/odxy32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy32010/odxy32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy33010/odxy33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy33010/odxy33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy34010/odxy34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy34010/odxy34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy35010/odxy35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy35010/odxy35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy36010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy36010/odxy36010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy36010/odxy36010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy36010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy37010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy37010/odxy37010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy37010/odxy37010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy37010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy38010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy38010/odxy38010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy38010/odxy38010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy38010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy39010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy39010/odxy39010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy39010/odxy39010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy39010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy40010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy40010/odxy40010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy40010/odxy40010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy40010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy53010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy53010/odxy53010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy53010/odxy53010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy53010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy54010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy54010/odxy54010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy54010/odxy54010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy54010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy55010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy55010/odxy55010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy55010/odxy55010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1642.sh&uri=mast:HST/product/odxy55010_flt.fits'




exit 0
