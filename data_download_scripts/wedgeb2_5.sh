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
FOLDER=MAST_2023-01-20T1649
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
        <title>MAST_2023-01-20T1649</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1649</h2>
        <h3>Total Files: 160</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g801050_flt.fits</td>
                <td>HST/o4g801050/o4g801050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7916010_flt.fits</td>
                <td>HST/ob7916010/ob7916010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7917010_flt.fits</td>
                <td>HST/ob7917010/ob7917010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7918010_flt.fits</td>
                <td>HST/ob7918010/ob7918010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7919010_flt.fits</td>
                <td>HST/ob7919010/ob7919010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7919020_flt.fits</td>
                <td>HST/ob7919020/ob7919020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7919030_flt.fits</td>
                <td>HST/ob7919030/ob7919030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7919040_flt.fits</td>
                <td>HST/ob7919040/ob7919040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7920010_flt.fits</td>
                <td>HST/ob7920010/ob7920010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7920020_flt.fits</td>
                <td>HST/ob7920020/ob7920020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7920030_flt.fits</td>
                <td>HST/ob7920030/ob7920030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7920040_flt.fits</td>
                <td>HST/ob7920040/ob7920040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7921010_flt.fits</td>
                <td>HST/ob7921010/ob7921010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7921020_flt.fits</td>
                <td>HST/ob7921020/ob7921020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7921030_flt.fits</td>
                <td>HST/ob7921030/ob7921030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7921040_flt.fits</td>
                <td>HST/ob7921040/ob7921040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7922010_flt.fits</td>
                <td>HST/ob7922010/ob7922010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7922020_flt.fits</td>
                <td>HST/ob7922020/ob7922020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7922030_flt.fits</td>
                <td>HST/ob7922030/ob7922030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob7922040_flt.fits</td>
                <td>HST/ob7922040/ob7922040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq01010_flt.fits</td>
                <td>HST/obsq01010/obsq01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq01020_flt.fits</td>
                <td>HST/obsq01020/obsq01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq01030_flt.fits</td>
                <td>HST/obsq01030/obsq01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq01040_flt.fits</td>
                <td>HST/obsq01040/obsq01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq02010_flt.fits</td>
                <td>HST/obsq02010/obsq02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq02020_flt.fits</td>
                <td>HST/obsq02020/obsq02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq02030_flt.fits</td>
                <td>HST/obsq02030/obsq02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq02040_flt.fits</td>
                <td>HST/obsq02040/obsq02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq03010_flt.fits</td>
                <td>HST/obsq03010/obsq03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq03020_flt.fits</td>
                <td>HST/obsq03020/obsq03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq03030_flt.fits</td>
                <td>HST/obsq03030/obsq03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq03040_flt.fits</td>
                <td>HST/obsq03040/obsq03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq04010_flt.fits</td>
                <td>HST/obsq04010/obsq04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq04020_flt.fits</td>
                <td>HST/obsq04020/obsq04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq04030_flt.fits</td>
                <td>HST/obsq04030/obsq04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq04040_flt.fits</td>
                <td>HST/obsq04040/obsq04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq05010_flt.fits</td>
                <td>HST/obsq05010/obsq05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq05020_flt.fits</td>
                <td>HST/obsq05020/obsq05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq05030_flt.fits</td>
                <td>HST/obsq05030/obsq05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq05040_flt.fits</td>
                <td>HST/obsq05040/obsq05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq06010_flt.fits</td>
                <td>HST/obsq06010/obsq06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq06020_flt.fits</td>
                <td>HST/obsq06020/obsq06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq06030_flt.fits</td>
                <td>HST/obsq06030/obsq06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq06040_flt.fits</td>
                <td>HST/obsq06040/obsq06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq07010_flt.fits</td>
                <td>HST/obsq07010/obsq07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq07020_flt.fits</td>
                <td>HST/obsq07020/obsq07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq07030_flt.fits</td>
                <td>HST/obsq07030/obsq07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq07040_flt.fits</td>
                <td>HST/obsq07040/obsq07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq08010_flt.fits</td>
                <td>HST/obsq08010/obsq08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq08020_flt.fits</td>
                <td>HST/obsq08020/obsq08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq08030_flt.fits</td>
                <td>HST/obsq08030/obsq08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq08040_flt.fits</td>
                <td>HST/obsq08040/obsq08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq09010_flt.fits</td>
                <td>HST/obsq09010/obsq09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq09020_flt.fits</td>
                <td>HST/obsq09020/obsq09020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq09030_flt.fits</td>
                <td>HST/obsq09030/obsq09030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq09040_flt.fits</td>
                <td>HST/obsq09040/obsq09040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq10010_flt.fits</td>
                <td>HST/obsq10010/obsq10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq10020_flt.fits</td>
                <td>HST/obsq10020/obsq10020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq10030_flt.fits</td>
                <td>HST/obsq10030/obsq10030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq10040_flt.fits</td>
                <td>HST/obsq10040/obsq10040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq11010_flt.fits</td>
                <td>HST/obsq11010/obsq11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq11020_flt.fits</td>
                <td>HST/obsq11020/obsq11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq11030_flt.fits</td>
                <td>HST/obsq11030/obsq11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq11040_flt.fits</td>
                <td>HST/obsq11040/obsq11040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq12010_flt.fits</td>
                <td>HST/obsq12010/obsq12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq12020_flt.fits</td>
                <td>HST/obsq12020/obsq12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq12030_flt.fits</td>
                <td>HST/obsq12030/obsq12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obsq12040_flt.fits</td>
                <td>HST/obsq12040/obsq12040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x01010_flt.fits</td>
                <td>HST/oc0x01010/oc0x01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x01020_flt.fits</td>
                <td>HST/oc0x01020/oc0x01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x01030_flt.fits</td>
                <td>HST/oc0x01030/oc0x01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x01040_flt.fits</td>
                <td>HST/oc0x01040/oc0x01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x02010_flt.fits</td>
                <td>HST/oc0x02010/oc0x02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x02020_flt.fits</td>
                <td>HST/oc0x02020/oc0x02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x02030_flt.fits</td>
                <td>HST/oc0x02030/oc0x02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x02040_flt.fits</td>
                <td>HST/oc0x02040/oc0x02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x03010_flt.fits</td>
                <td>HST/oc0x03010/oc0x03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x03020_flt.fits</td>
                <td>HST/oc0x03020/oc0x03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x03030_flt.fits</td>
                <td>HST/oc0x03030/oc0x03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x03040_flt.fits</td>
                <td>HST/oc0x03040/oc0x03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x04010_flt.fits</td>
                <td>HST/oc0x04010/oc0x04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x04020_flt.fits</td>
                <td>HST/oc0x04020/oc0x04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x04030_flt.fits</td>
                <td>HST/oc0x04030/oc0x04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x04040_flt.fits</td>
                <td>HST/oc0x04040/oc0x04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x05010_flt.fits</td>
                <td>HST/oc0x05010/oc0x05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x05020_flt.fits</td>
                <td>HST/oc0x05020/oc0x05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x05030_flt.fits</td>
                <td>HST/oc0x05030/oc0x05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x05040_flt.fits</td>
                <td>HST/oc0x05040/oc0x05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x06010_flt.fits</td>
                <td>HST/oc0x06010/oc0x06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x06020_flt.fits</td>
                <td>HST/oc0x06020/oc0x06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x06030_flt.fits</td>
                <td>HST/oc0x06030/oc0x06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x06040_flt.fits</td>
                <td>HST/oc0x06040/oc0x06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x07010_flt.fits</td>
                <td>HST/oc0x07010/oc0x07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x07020_flt.fits</td>
                <td>HST/oc0x07020/oc0x07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x07030_flt.fits</td>
                <td>HST/oc0x07030/oc0x07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x07040_flt.fits</td>
                <td>HST/oc0x07040/oc0x07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x08010_flt.fits</td>
                <td>HST/oc0x08010/oc0x08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x08020_flt.fits</td>
                <td>HST/oc0x08020/oc0x08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x08030_flt.fits</td>
                <td>HST/oc0x08030/oc0x08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x08040_flt.fits</td>
                <td>HST/oc0x08040/oc0x08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x09010_flt.fits</td>
                <td>HST/oc0x09010/oc0x09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x09020_flt.fits</td>
                <td>HST/oc0x09020/oc0x09020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x09030_flt.fits</td>
                <td>HST/oc0x09030/oc0x09030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x09040_flt.fits</td>
                <td>HST/oc0x09040/oc0x09040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x10010_flt.fits</td>
                <td>HST/oc0x10010/oc0x10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x10020_flt.fits</td>
                <td>HST/oc0x10020/oc0x10020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x10030_flt.fits</td>
                <td>HST/oc0x10030/oc0x10030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x10040_flt.fits</td>
                <td>HST/oc0x10040/oc0x10040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x11010_flt.fits</td>
                <td>HST/oc0x11010/oc0x11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x11020_flt.fits</td>
                <td>HST/oc0x11020/oc0x11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x11030_flt.fits</td>
                <td>HST/oc0x11030/oc0x11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x11040_flt.fits</td>
                <td>HST/oc0x11040/oc0x11040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x12010_flt.fits</td>
                <td>HST/oc0x12010/oc0x12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x12020_flt.fits</td>
                <td>HST/oc0x12020/oc0x12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x12030_flt.fits</td>
                <td>HST/oc0x12030/oc0x12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc0x12040_flt.fits</td>
                <td>HST/oc0x12040/oc0x12040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01050_flt.fits</td>
                <td>HST/oclx01050/oclx01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01060_flt.fits</td>
                <td>HST/oclx01060/oclx01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01070_flt.fits</td>
                <td>HST/oclx01070/oclx01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx01080_flt.fits</td>
                <td>HST/oclx01080/oclx01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02050_flt.fits</td>
                <td>HST/oclx02050/oclx02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02060_flt.fits</td>
                <td>HST/oclx02060/oclx02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx02070_flt.fits</td>
                <td>HST/oclx02070/oclx02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03050_flt.fits</td>
                <td>HST/oclx03050/oclx03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03060_flt.fits</td>
                <td>HST/oclx03060/oclx03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx03070_flt.fits</td>
                <td>HST/oclx03070/oclx03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04050_flt.fits</td>
                <td>HST/oclx04050/oclx04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04060_flt.fits</td>
                <td>HST/oclx04060/oclx04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx04070_flt.fits</td>
                <td>HST/oclx04070/oclx04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05050_flt.fits</td>
                <td>HST/oclx05050/oclx05050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05060_flt.fits</td>
                <td>HST/oclx05060/oclx05060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx05070_flt.fits</td>
                <td>HST/oclx05070/oclx05070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06050_flt.fits</td>
                <td>HST/oclx06050/oclx06050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06060_flt.fits</td>
                <td>HST/oclx06060/oclx06060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06070_flt.fits</td>
                <td>HST/oclx06070/oclx06070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx06080_flt.fits</td>
                <td>HST/oclx06080/oclx06080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07050_flt.fits</td>
                <td>HST/oclx07050/oclx07050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07060_flt.fits</td>
                <td>HST/oclx07060/oclx07060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx07070_flt.fits</td>
                <td>HST/oclx07070/oclx07070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08050_flt.fits</td>
                <td>HST/oclx08050/oclx08050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08060_flt.fits</td>
                <td>HST/oclx08060/oclx08060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx08070_flt.fits</td>
                <td>HST/oclx08070/oclx08070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09050_flt.fits</td>
                <td>HST/oclx09050/oclx09050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09060_flt.fits</td>
                <td>HST/oclx09060/oclx09060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx09070_flt.fits</td>
                <td>HST/oclx09070/oclx09070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10050_flt.fits</td>
                <td>HST/oclx10050/oclx10050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10060_flt.fits</td>
                <td>HST/oclx10060/oclx10060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oclx10070_flt.fits</td>
                <td>HST/oclx10070/oclx10070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odf902010_flt.fits</td>
                <td>HST/odf902010/odf902010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odf903010_flt.fits</td>
                <td>HST/odf903010/odf903010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odf904010_flt.fits</td>
                <td>HST/odf904010/odf904010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odf905010_flt.fits</td>
                <td>HST/odf905010/odf905010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k05030_flt.fits</td>
                <td>HST/oe1k05030/oe1k05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k05040_flt.fits</td>
                <td>HST/oe1k05040/oe1k05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k06030_flt.fits</td>
                <td>HST/oe1k06030/oe1k06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k06040_flt.fits</td>
                <td>HST/oe1k06040/oe1k06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k07030_flt.fits</td>
                <td>HST/oe1k07030/oe1k07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k07040_flt.fits</td>
                <td>HST/oe1k07040/oe1k07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k08030_flt.fits</td>
                <td>HST/oe1k08030/oe1k08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k08040_flt.fits</td>
                <td>HST/oe1k08040/oe1k08040_flt.fits</td>
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
<<< Downloading File: mast:HST/product/oc0x09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x09010/oc0x09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x09010/oc0x09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x09020/oc0x09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x09020/oc0x09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x09030/oc0x09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x09030/oc0x09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x09040/oc0x09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x09040/oc0x09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x10010/oc0x10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x10010/oc0x10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x10020/oc0x10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x10020/oc0x10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x10030/oc0x10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x10030/oc0x10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x10040/oc0x10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x10040/oc0x10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x11010/oc0x11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x11010/oc0x11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x11020/oc0x11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x11020/oc0x11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x11030/oc0x11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x11030/oc0x11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x11040/oc0x11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x11040/oc0x11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x12010/oc0x12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x12010/oc0x12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x12020/oc0x12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x12020/oc0x12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x12030/oc0x12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x12030/oc0x12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x12040/oc0x12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x12040/oc0x12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01050/oclx01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01050/oclx01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01060/oclx01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01060/oclx01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01070/oclx01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01070/oclx01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx01080/oclx01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx01080/oclx01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02050/oclx02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02050/oclx02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02060/oclx02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02060/oclx02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx02070/oclx02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx02070/oclx02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03050/oclx03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03050/oclx03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03060/oclx03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03060/oclx03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx03070/oclx03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx03070/oclx03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04050/oclx04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04050/oclx04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04060/oclx04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04060/oclx04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx04070/oclx04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx04070/oclx04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05050/oclx05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05050/oclx05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05060/oclx05060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05060/oclx05060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx05060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx05070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx05070/oclx05070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx05070/oclx05070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx05070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06050/oclx06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06050/oclx06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06060/oclx06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06060/oclx06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06070/oclx06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06070/oclx06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx06080/oclx06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx06080/oclx06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07050/oclx07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07050/oclx07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07060/oclx07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07060/oclx07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx07070/oclx07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx07070/oclx07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08050/oclx08050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08050/oclx08050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx08050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08060/oclx08060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08060/oclx08060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx08060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx08070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx08070/oclx08070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx08070/oclx08070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx08070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09050/oclx09050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09050/oclx09050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx09050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09060/oclx09060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09060/oclx09060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx09060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx09070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx09070/oclx09070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx09070/oclx09070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx09070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10050/oclx10050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10050/oclx10050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx10050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10060/oclx10060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10060/oclx10060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx10060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oclx10070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oclx10070/oclx10070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oclx10070/oclx10070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oclx10070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odf902010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odf902010/odf902010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odf902010/odf902010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/odf902010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odf903010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odf903010/odf903010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odf903010/odf903010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/odf903010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odf904010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odf904010/odf904010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odf904010/odf904010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/odf904010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odf905010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odf905010/odf905010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odf905010/odf905010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/odf905010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k05030/oe1k05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k05030/oe1k05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k05040/oe1k05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k05040/oe1k05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k06030/oe1k06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k06030/oe1k06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k06040/oe1k06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k06040/oe1k06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k07030/oe1k07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k07030/oe1k07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k07040/oe1k07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k07040/oe1k07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k08030/oe1k08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k08030/oe1k08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k08040/oe1k08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k08040/oe1k08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oe1k08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4g801050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g801050/o4g801050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g801050/o4g801050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/o4g801050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7916010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7916010/ob7916010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7916010/ob7916010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7916010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7917010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7917010/ob7917010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7917010/ob7917010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7917010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7918010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7918010/ob7918010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7918010/ob7918010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7918010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7919010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7919010/ob7919010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7919010/ob7919010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7919010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7919020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7919020/ob7919020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7919020/ob7919020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7919020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7919030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7919030/ob7919030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7919030/ob7919030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7919030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7919040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7919040/ob7919040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7919040/ob7919040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7919040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7920010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7920010/ob7920010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7920010/ob7920010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7920010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7920020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7920020/ob7920020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7920020/ob7920020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7920020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7920030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7920030/ob7920030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7920030/ob7920030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7920030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7920040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7920040/ob7920040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7920040/ob7920040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7920040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7921010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7921010/ob7921010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7921010/ob7921010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7921010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7921020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7921020/ob7921020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7921020/ob7921020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7921020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7921030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7921030/ob7921030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7921030/ob7921030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7921030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7921040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7921040/ob7921040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7921040/ob7921040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7921040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7922010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7922010/ob7922010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7922010/ob7922010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7922010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7922020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7922020/ob7922020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7922020/ob7922020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7922020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7922030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7922030/ob7922030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7922030/ob7922030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7922030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob7922040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob7922040/ob7922040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob7922040/ob7922040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/ob7922040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq01010/obsq01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq01010/obsq01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq01020/obsq01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq01020/obsq01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq01030/obsq01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq01030/obsq01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq01040/obsq01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq01040/obsq01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq02010/obsq02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq02010/obsq02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq02020/obsq02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq02020/obsq02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq02030/obsq02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq02030/obsq02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq02040/obsq02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq02040/obsq02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq03010/obsq03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq03010/obsq03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq03020/obsq03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq03020/obsq03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq03030/obsq03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq03030/obsq03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq03040/obsq03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq03040/obsq03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq04010/obsq04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq04010/obsq04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq04020/obsq04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq04020/obsq04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq04030/obsq04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq04030/obsq04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq04040/obsq04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq04040/obsq04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq05010/obsq05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq05010/obsq05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq05020/obsq05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq05020/obsq05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq05030/obsq05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq05030/obsq05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq05040/obsq05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq05040/obsq05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq06010/obsq06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq06010/obsq06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq06020/obsq06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq06020/obsq06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq06030/obsq06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq06030/obsq06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq06040/obsq06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq06040/obsq06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq07010/obsq07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq07010/obsq07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq07020/obsq07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq07020/obsq07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq07030/obsq07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq07030/obsq07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq07040/obsq07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq07040/obsq07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq08010/obsq08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq08010/obsq08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq08020/obsq08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq08020/obsq08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq08030/obsq08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq08030/obsq08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq08040/obsq08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq08040/obsq08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq09010/obsq09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq09010/obsq09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq09020/obsq09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq09020/obsq09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq09030/obsq09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq09030/obsq09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq09040/obsq09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq09040/obsq09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq10010/obsq10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq10010/obsq10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq10020/obsq10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq10020/obsq10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq10030/obsq10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq10030/obsq10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq10040/obsq10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq10040/obsq10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq11010/obsq11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq11010/obsq11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq11020/obsq11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq11020/obsq11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq11030/obsq11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq11030/obsq11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq11040/obsq11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq11040/obsq11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq12010/obsq12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq12010/obsq12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq12020/obsq12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq12020/obsq12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq12030/obsq12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq12030/obsq12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obsq12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obsq12040/obsq12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obsq12040/obsq12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/obsq12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x01010/oc0x01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x01010/oc0x01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x01020/oc0x01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x01020/oc0x01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x01030/oc0x01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x01030/oc0x01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x01040/oc0x01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x01040/oc0x01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x02010/oc0x02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x02010/oc0x02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x02020/oc0x02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x02020/oc0x02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x02030/oc0x02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x02030/oc0x02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x02040/oc0x02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x02040/oc0x02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x03010/oc0x03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x03010/oc0x03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x03020/oc0x03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x03020/oc0x03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x03030/oc0x03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x03030/oc0x03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x03040/oc0x03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x03040/oc0x03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x04010/oc0x04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x04010/oc0x04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x04020/oc0x04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x04020/oc0x04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x04030/oc0x04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x04030/oc0x04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x04040/oc0x04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x04040/oc0x04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x05010/oc0x05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x05010/oc0x05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x05020/oc0x05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x05020/oc0x05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x05030/oc0x05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x05030/oc0x05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x05040/oc0x05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x05040/oc0x05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x06010/oc0x06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x06010/oc0x06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x06020/oc0x06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x06020/oc0x06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x06030/oc0x06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x06030/oc0x06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x06040/oc0x06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x06040/oc0x06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x07010/oc0x07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x07010/oc0x07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x07020/oc0x07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x07020/oc0x07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x07030/oc0x07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x07030/oc0x07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x07040/oc0x07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x07040/oc0x07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x08010/oc0x08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x08010/oc0x08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x08020/oc0x08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x08020/oc0x08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x08030/oc0x08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x08030/oc0x08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc0x08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc0x08040/oc0x08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc0x08040/oc0x08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1649.sh&uri=mast:HST/product/oc0x08040_flt.fits'




exit 0
