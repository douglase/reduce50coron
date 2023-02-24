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
FOLDER=MAST_2023-01-20T1650
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
        <title>MAST_2023-01-20T1650</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1650</h2>
        <h3>Total Files: 100</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y001150_flt.fits</td>
                <td>HST/o3y001150/o3y001150_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y001170_flt.fits</td>
                <td>HST/o3y001170/o3y001170_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y002150_flt.fits</td>
                <td>HST/o3y002150/o3y002150_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o3y002170_flt.fits</td>
                <td>HST/o3y002170/o3y002170_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g801040_flt.fits</td>
                <td>HST/o4g801040/o4g801040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx21010_flt.fits</td>
                <td>HST/oerx21010/oerx21010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx21020_flt.fits</td>
                <td>HST/oerx21020/oerx21020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx21030_flt.fits</td>
                <td>HST/oerx21030/oerx21030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx21040_flt.fits</td>
                <td>HST/oerx21040/oerx21040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx22010_flt.fits</td>
                <td>HST/oerx22010/oerx22010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx22020_flt.fits</td>
                <td>HST/oerx22020/oerx22020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx22030_flt.fits</td>
                <td>HST/oerx22030/oerx22030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx22040_flt.fits</td>
                <td>HST/oerx22040/oerx22040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx23010_flt.fits</td>
                <td>HST/oerx23010/oerx23010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx23020_flt.fits</td>
                <td>HST/oerx23020/oerx23020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx23030_flt.fits</td>
                <td>HST/oerx23030/oerx23030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx24010_flt.fits</td>
                <td>HST/oerx24010/oerx24010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx24020_flt.fits</td>
                <td>HST/oerx24020/oerx24020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx24030_flt.fits</td>
                <td>HST/oerx24030/oerx24030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx24040_flt.fits</td>
                <td>HST/oerx24040/oerx24040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx31010_flt.fits</td>
                <td>HST/oerx31010/oerx31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx31020_flt.fits</td>
                <td>HST/oerx31020/oerx31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx31030_flt.fits</td>
                <td>HST/oerx31030/oerx31030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx31040_flt.fits</td>
                <td>HST/oerx31040/oerx31040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx32010_flt.fits</td>
                <td>HST/oerx32010/oerx32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx32020_flt.fits</td>
                <td>HST/oerx32020/oerx32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx32030_flt.fits</td>
                <td>HST/oerx32030/oerx32030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx32040_flt.fits</td>
                <td>HST/oerx32040/oerx32040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx33010_flt.fits</td>
                <td>HST/oerx33010/oerx33010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx33020_flt.fits</td>
                <td>HST/oerx33020/oerx33020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx33030_flt.fits</td>
                <td>HST/oerx33030/oerx33030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx33040_flt.fits</td>
                <td>HST/oerx33040/oerx33040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx34010_flt.fits</td>
                <td>HST/oerx34010/oerx34010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx34020_flt.fits</td>
                <td>HST/oerx34020/oerx34020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx34030_flt.fits</td>
                <td>HST/oerx34030/oerx34030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx34040_flt.fits</td>
                <td>HST/oerx34040/oerx34040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx35010_flt.fits</td>
                <td>HST/oerx35010/oerx35010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx35020_flt.fits</td>
                <td>HST/oerx35020/oerx35020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx35030_flt.fits</td>
                <td>HST/oerx35030/oerx35030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx35040_flt.fits</td>
                <td>HST/oerx35040/oerx35040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx41010_flt.fits</td>
                <td>HST/oerx41010/oerx41010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx41020_flt.fits</td>
                <td>HST/oerx41020/oerx41020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx41030_flt.fits</td>
                <td>HST/oerx41030/oerx41030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx41040_flt.fits</td>
                <td>HST/oerx41040/oerx41040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx42010_flt.fits</td>
                <td>HST/oerx42010/oerx42010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx42020_flt.fits</td>
                <td>HST/oerx42020/oerx42020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx42030_flt.fits</td>
                <td>HST/oerx42030/oerx42030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx42040_flt.fits</td>
                <td>HST/oerx42040/oerx42040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx43010_flt.fits</td>
                <td>HST/oerx43010/oerx43010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx43020_flt.fits</td>
                <td>HST/oerx43020/oerx43020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx43030_flt.fits</td>
                <td>HST/oerx43030/oerx43030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx44010_flt.fits</td>
                <td>HST/oerx44010/oerx44010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx44020_flt.fits</td>
                <td>HST/oerx44020/oerx44020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx44030_flt.fits</td>
                <td>HST/oerx44030/oerx44030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx44040_flt.fits</td>
                <td>HST/oerx44040/oerx44040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx45010_flt.fits</td>
                <td>HST/oerx45010/oerx45010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx45020_flt.fits</td>
                <td>HST/oerx45020/oerx45020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx45030_flt.fits</td>
                <td>HST/oerx45030/oerx45030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx45040_flt.fits</td>
                <td>HST/oerx45040/oerx45040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx51010_flt.fits</td>
                <td>HST/oerx51010/oerx51010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx51020_flt.fits</td>
                <td>HST/oerx51020/oerx51020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx51030_flt.fits</td>
                <td>HST/oerx51030/oerx51030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx51040_flt.fits</td>
                <td>HST/oerx51040/oerx51040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx52010_flt.fits</td>
                <td>HST/oerx52010/oerx52010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx52020_flt.fits</td>
                <td>HST/oerx52020/oerx52020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx52030_flt.fits</td>
                <td>HST/oerx52030/oerx52030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx52040_flt.fits</td>
                <td>HST/oerx52040/oerx52040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx53010_flt.fits</td>
                <td>HST/oerx53010/oerx53010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx53020_flt.fits</td>
                <td>HST/oerx53020/oerx53020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx53030_flt.fits</td>
                <td>HST/oerx53030/oerx53030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx53040_flt.fits</td>
                <td>HST/oerx53040/oerx53040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx53x5q_flt.fits</td>
                <td>HST/oerx53x5q/oerx53x5q_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx54010_flt.fits</td>
                <td>HST/oerx54010/oerx54010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx54020_flt.fits</td>
                <td>HST/oerx54020/oerx54020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx54030_flt.fits</td>
                <td>HST/oerx54030/oerx54030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx54040_flt.fits</td>
                <td>HST/oerx54040/oerx54040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx55010_flt.fits</td>
                <td>HST/oerx55010/oerx55010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx55020_flt.fits</td>
                <td>HST/oerx55020/oerx55020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx55030_flt.fits</td>
                <td>HST/oerx55030/oerx55030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx55040_flt.fits</td>
                <td>HST/oerx55040/oerx55040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx61010_flt.fits</td>
                <td>HST/oerx61010/oerx61010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx61020_flt.fits</td>
                <td>HST/oerx61020/oerx61020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx61030_flt.fits</td>
                <td>HST/oerx61030/oerx61030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx61040_flt.fits</td>
                <td>HST/oerx61040/oerx61040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx62010_flt.fits</td>
                <td>HST/oerx62010/oerx62010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx62020_flt.fits</td>
                <td>HST/oerx62020/oerx62020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx62030_flt.fits</td>
                <td>HST/oerx62030/oerx62030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx62040_flt.fits</td>
                <td>HST/oerx62040/oerx62040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx63010_flt.fits</td>
                <td>HST/oerx63010/oerx63010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx63020_flt.fits</td>
                <td>HST/oerx63020/oerx63020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx63030_flt.fits</td>
                <td>HST/oerx63030/oerx63030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx63040_flt.fits</td>
                <td>HST/oerx63040/oerx63040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx64010_flt.fits</td>
                <td>HST/oerx64010/oerx64010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx64020_flt.fits</td>
                <td>HST/oerx64020/oerx64020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx64030_flt.fits</td>
                <td>HST/oerx64030/oerx64030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx64040_flt.fits</td>
                <td>HST/oerx64040/oerx64040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx65010_flt.fits</td>
                <td>HST/oerx65010/oerx65010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx65020_flt.fits</td>
                <td>HST/oerx65020/oerx65020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx65030_flt.fits</td>
                <td>HST/oerx65030/oerx65030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oerx65040_flt.fits</td>
                <td>HST/oerx65040/oerx65040_flt.fits</td>
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
<<< Downloading File: mast:HST/product/o3y001150_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y001150/o3y001150_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y001150/o3y001150_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/o3y001150_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y001170_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y001170/o3y001170_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y001170/o3y001170_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/o3y001170_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y002150_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y002150/o3y002150_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y002150/o3y002150_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/o3y002150_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y002170_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o3y002170/o3y002170_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o3y002170/o3y002170_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/o3y002170_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4g801040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g801040/o4g801040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g801040/o4g801040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/o4g801040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx21010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx21010/oerx21010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx21010/oerx21010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx21010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx21020/oerx21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx21020/oerx21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx21030/oerx21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx21030/oerx21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx21040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx21040/oerx21040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx21040/oerx21040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx21040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx22010/oerx22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx22010/oerx22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx22020/oerx22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx22020/oerx22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx22030/oerx22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx22030/oerx22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx22040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx22040/oerx22040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx22040/oerx22040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx22040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx23010/oerx23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx23010/oerx23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx23020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx23020/oerx23020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx23020/oerx23020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx23020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx23030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx23030/oerx23030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx23030/oerx23030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx23030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx24010/oerx24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx24010/oerx24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx24020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx24020/oerx24020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx24020/oerx24020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx24020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx24030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx24030/oerx24030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx24030/oerx24030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx24030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx24040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx24040/oerx24040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx24040/oerx24040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx24040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx31010/oerx31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx31010/oerx31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx31020/oerx31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx31020/oerx31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx31030/oerx31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx31030/oerx31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx31040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx31040/oerx31040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx31040/oerx31040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx31040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx32010/oerx32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx32010/oerx32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx32020/oerx32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx32020/oerx32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx32030/oerx32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx32030/oerx32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx32040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx32040/oerx32040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx32040/oerx32040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx32040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx33010/oerx33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx33010/oerx33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx33020/oerx33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx33020/oerx33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx33030/oerx33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx33030/oerx33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx33040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx33040/oerx33040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx33040/oerx33040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx33040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx34010/oerx34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx34010/oerx34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx34020/oerx34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx34020/oerx34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx34030/oerx34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx34030/oerx34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx34040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx34040/oerx34040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx34040/oerx34040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx34040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx35010/oerx35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx35010/oerx35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx35020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx35020/oerx35020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx35020/oerx35020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx35020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx35030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx35030/oerx35030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx35030/oerx35030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx35030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx35040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx35040/oerx35040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx35040/oerx35040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx35040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx41010/oerx41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx41010/oerx41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx41020/oerx41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx41020/oerx41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx41030/oerx41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx41030/oerx41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx41040/oerx41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx41040/oerx41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx42010/oerx42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx42010/oerx42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx42020/oerx42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx42020/oerx42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx42030/oerx42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx42030/oerx42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx42040/oerx42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx42040/oerx42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx43010/oerx43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx43010/oerx43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx43020/oerx43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx43020/oerx43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx43030/oerx43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx43030/oerx43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx44010/oerx44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx44010/oerx44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx44020/oerx44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx44020/oerx44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx44030/oerx44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx44030/oerx44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx44040/oerx44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx44040/oerx44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx45010/oerx45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx45010/oerx45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx45020/oerx45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx45020/oerx45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx45030/oerx45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx45030/oerx45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx45040/oerx45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx45040/oerx45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx51010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx51010/oerx51010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx51010/oerx51010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx51010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx51020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx51020/oerx51020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx51020/oerx51020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx51020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx51030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx51030/oerx51030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx51030/oerx51030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx51030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx51040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx51040/oerx51040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx51040/oerx51040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx51040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx52010/oerx52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx52010/oerx52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx52020/oerx52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx52020/oerx52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx52030/oerx52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx52030/oerx52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx52040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx52040/oerx52040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx52040/oerx52040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx52040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx53010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx53010/oerx53010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx53010/oerx53010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx53010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx53020/oerx53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx53020/oerx53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx53030/oerx53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx53030/oerx53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx53040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx53040/oerx53040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx53040/oerx53040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx53040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx53x5q_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx53x5q/oerx53x5q_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx53x5q/oerx53x5q_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx53x5q_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx54010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx54010/oerx54010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx54010/oerx54010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx54010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx54020/oerx54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx54020/oerx54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx54030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx54030/oerx54030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx54030/oerx54030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx54030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx54040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx54040/oerx54040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx54040/oerx54040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx54040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx55010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx55010/oerx55010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx55010/oerx55010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx55010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx55020/oerx55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx55020/oerx55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx55030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx55030/oerx55030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx55030/oerx55030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx55030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx55040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx55040/oerx55040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx55040/oerx55040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx55040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx61010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx61010/oerx61010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx61010/oerx61010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx61010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx61020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx61020/oerx61020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx61020/oerx61020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx61020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx61030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx61030/oerx61030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx61030/oerx61030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx61030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx61040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx61040/oerx61040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx61040/oerx61040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx61040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx62010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx62010/oerx62010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx62010/oerx62010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx62010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx62020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx62020/oerx62020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx62020/oerx62020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx62020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx62030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx62030/oerx62030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx62030/oerx62030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx62030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx62040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx62040/oerx62040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx62040/oerx62040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx62040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx63010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx63010/oerx63010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx63010/oerx63010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx63010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx63020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx63020/oerx63020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx63020/oerx63020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx63020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx63030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx63030/oerx63030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx63030/oerx63030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx63030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx63040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx63040/oerx63040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx63040/oerx63040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx63040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx64010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx64010/oerx64010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx64010/oerx64010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx64010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx64020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx64020/oerx64020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx64020/oerx64020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx64020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx64030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx64030/oerx64030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx64030/oerx64030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx64030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx64040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx64040/oerx64040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx64040/oerx64040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx64040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx65010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx65010/oerx65010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx65010/oerx65010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx65010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx65020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx65020/oerx65020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx65020/oerx65020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx65020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx65030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx65030/oerx65030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx65030/oerx65030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx65030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oerx65040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oerx65040/oerx65040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oerx65040/oerx65040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1650.sh&uri=mast:HST/product/oerx65040_flt.fits'




exit 0
