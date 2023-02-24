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
FOLDER=MAST_2023-01-20T1644
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
        <title>MAST_2023-01-20T1644</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1644</h2>
        <h3>Total Files: 589</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o8tg01010_flt.fits</td>
                <td>HST/o8tg01010/o8tg01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw01010_flt.fits</td>
                <td>HST/obiw01010/obiw01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw01020_flt.fits</td>
                <td>HST/obiw01020/obiw01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw02010_flt.fits</td>
                <td>HST/obiw02010/obiw02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw02020_flt.fits</td>
                <td>HST/obiw02020/obiw02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw03010_flt.fits</td>
                <td>HST/obiw03010/obiw03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw03020_flt.fits</td>
                <td>HST/obiw03020/obiw03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw04010_flt.fits</td>
                <td>HST/obiw04010/obiw04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw04020_flt.fits</td>
                <td>HST/obiw04020/obiw04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw05010_flt.fits</td>
                <td>HST/obiw05010/obiw05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw05020_flt.fits</td>
                <td>HST/obiw05020/obiw05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw06010_flt.fits</td>
                <td>HST/obiw06010/obiw06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw06020_flt.fits</td>
                <td>HST/obiw06020/obiw06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw07010_flt.fits</td>
                <td>HST/obiw07010/obiw07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw07020_flt.fits</td>
                <td>HST/obiw07020/obiw07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw08010_flt.fits</td>
                <td>HST/obiw08010/obiw08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw08020_flt.fits</td>
                <td>HST/obiw08020/obiw08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw11010_flt.fits</td>
                <td>HST/obiw11010/obiw11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw11020_flt.fits</td>
                <td>HST/obiw11020/obiw11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw11030_flt.fits</td>
                <td>HST/obiw11030/obiw11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw12010_flt.fits</td>
                <td>HST/obiw12010/obiw12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw12020_flt.fits</td>
                <td>HST/obiw12020/obiw12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw12030_flt.fits</td>
                <td>HST/obiw12030/obiw12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw13010_flt.fits</td>
                <td>HST/obiw13010/obiw13010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw13020_flt.fits</td>
                <td>HST/obiw13020/obiw13020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw13030_flt.fits</td>
                <td>HST/obiw13030/obiw13030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw14010_flt.fits</td>
                <td>HST/obiw14010/obiw14010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw14020_flt.fits</td>
                <td>HST/obiw14020/obiw14020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw14030_flt.fits</td>
                <td>HST/obiw14030/obiw14030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw15010_flt.fits</td>
                <td>HST/obiw15010/obiw15010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw15020_flt.fits</td>
                <td>HST/obiw15020/obiw15020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw15030_flt.fits</td>
                <td>HST/obiw15030/obiw15030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw16010_flt.fits</td>
                <td>HST/obiw16010/obiw16010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw16020_flt.fits</td>
                <td>HST/obiw16020/obiw16020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw16030_flt.fits</td>
                <td>HST/obiw16030/obiw16030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw17010_flt.fits</td>
                <td>HST/obiw17010/obiw17010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw17020_flt.fits</td>
                <td>HST/obiw17020/obiw17020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw17030_flt.fits</td>
                <td>HST/obiw17030/obiw17030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw18010_flt.fits</td>
                <td>HST/obiw18010/obiw18010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw18020_flt.fits</td>
                <td>HST/obiw18020/obiw18020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw18030_flt.fits</td>
                <td>HST/obiw18030/obiw18030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw21010_flt.fits</td>
                <td>HST/obiw21010/obiw21010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw21020_flt.fits</td>
                <td>HST/obiw21020/obiw21020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw22010_flt.fits</td>
                <td>HST/obiw22010/obiw22010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw22020_flt.fits</td>
                <td>HST/obiw22020/obiw22020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw23010_flt.fits</td>
                <td>HST/obiw23010/obiw23010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw23020_flt.fits</td>
                <td>HST/obiw23020/obiw23020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw23030_flt.fits</td>
                <td>HST/obiw23030/obiw23030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw24010_flt.fits</td>
                <td>HST/obiw24010/obiw24010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw24020_flt.fits</td>
                <td>HST/obiw24020/obiw24020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw25010_flt.fits</td>
                <td>HST/obiw25010/obiw25010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw25020_flt.fits</td>
                <td>HST/obiw25020/obiw25020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw26010_flt.fits</td>
                <td>HST/obiw26010/obiw26010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw26020_flt.fits</td>
                <td>HST/obiw26020/obiw26020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw27010_flt.fits</td>
                <td>HST/obiw27010/obiw27010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw27020_flt.fits</td>
                <td>HST/obiw27020/obiw27020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw27030_flt.fits</td>
                <td>HST/obiw27030/obiw27030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw28010_flt.fits</td>
                <td>HST/obiw28010/obiw28010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw28020_flt.fits</td>
                <td>HST/obiw28020/obiw28020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw31010_flt.fits</td>
                <td>HST/obiw31010/obiw31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw31020_flt.fits</td>
                <td>HST/obiw31020/obiw31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw32010_flt.fits</td>
                <td>HST/obiw32010/obiw32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw32020_flt.fits</td>
                <td>HST/obiw32020/obiw32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw33010_flt.fits</td>
                <td>HST/obiw33010/obiw33010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw33020_flt.fits</td>
                <td>HST/obiw33020/obiw33020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw34010_flt.fits</td>
                <td>HST/obiw34010/obiw34010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw34020_flt.fits</td>
                <td>HST/obiw34020/obiw34020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw35010_flt.fits</td>
                <td>HST/obiw35010/obiw35010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw35020_flt.fits</td>
                <td>HST/obiw35020/obiw35020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw36010_flt.fits</td>
                <td>HST/obiw36010/obiw36010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw36020_flt.fits</td>
                <td>HST/obiw36020/obiw36020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw37010_flt.fits</td>
                <td>HST/obiw37010/obiw37010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw37020_flt.fits</td>
                <td>HST/obiw37020/obiw37020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw38010_flt.fits</td>
                <td>HST/obiw38010/obiw38010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw38020_flt.fits</td>
                <td>HST/obiw38020/obiw38020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw41010_flt.fits</td>
                <td>HST/obiw41010/obiw41010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw41020_flt.fits</td>
                <td>HST/obiw41020/obiw41020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw41030_flt.fits</td>
                <td>HST/obiw41030/obiw41030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw42010_flt.fits</td>
                <td>HST/obiw42010/obiw42010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw42020_flt.fits</td>
                <td>HST/obiw42020/obiw42020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw42030_flt.fits</td>
                <td>HST/obiw42030/obiw42030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw43010_flt.fits</td>
                <td>HST/obiw43010/obiw43010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw43020_flt.fits</td>
                <td>HST/obiw43020/obiw43020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw43030_flt.fits</td>
                <td>HST/obiw43030/obiw43030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw44010_flt.fits</td>
                <td>HST/obiw44010/obiw44010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw44020_flt.fits</td>
                <td>HST/obiw44020/obiw44020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw44030_flt.fits</td>
                <td>HST/obiw44030/obiw44030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw45010_flt.fits</td>
                <td>HST/obiw45010/obiw45010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw45020_flt.fits</td>
                <td>HST/obiw45020/obiw45020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw45030_flt.fits</td>
                <td>HST/obiw45030/obiw45030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw46010_flt.fits</td>
                <td>HST/obiw46010/obiw46010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw46020_flt.fits</td>
                <td>HST/obiw46020/obiw46020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw46030_flt.fits</td>
                <td>HST/obiw46030/obiw46030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw47010_flt.fits</td>
                <td>HST/obiw47010/obiw47010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw47020_flt.fits</td>
                <td>HST/obiw47020/obiw47020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw47030_flt.fits</td>
                <td>HST/obiw47030/obiw47030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw48010_flt.fits</td>
                <td>HST/obiw48010/obiw48010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw48020_flt.fits</td>
                <td>HST/obiw48020/obiw48020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw48030_flt.fits</td>
                <td>HST/obiw48030/obiw48030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw51010_flt.fits</td>
                <td>HST/obiw51010/obiw51010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw51020_flt.fits</td>
                <td>HST/obiw51020/obiw51020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw52010_flt.fits</td>
                <td>HST/obiw52010/obiw52010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw52020_flt.fits</td>
                <td>HST/obiw52020/obiw52020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw53010_flt.fits</td>
                <td>HST/obiw53010/obiw53010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw53020_flt.fits</td>
                <td>HST/obiw53020/obiw53020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw54010_flt.fits</td>
                <td>HST/obiw54010/obiw54010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw54020_flt.fits</td>
                <td>HST/obiw54020/obiw54020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw55010_flt.fits</td>
                <td>HST/obiw55010/obiw55010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw55020_flt.fits</td>
                <td>HST/obiw55020/obiw55020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw56010_flt.fits</td>
                <td>HST/obiw56010/obiw56010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw56020_flt.fits</td>
                <td>HST/obiw56020/obiw56020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw57010_flt.fits</td>
                <td>HST/obiw57010/obiw57010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw57020_flt.fits</td>
                <td>HST/obiw57020/obiw57020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw58010_flt.fits</td>
                <td>HST/obiw58010/obiw58010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw58020_flt.fits</td>
                <td>HST/obiw58020/obiw58020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw61010_flt.fits</td>
                <td>HST/obiw61010/obiw61010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw61020_flt.fits</td>
                <td>HST/obiw61020/obiw61020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw62010_flt.fits</td>
                <td>HST/obiw62010/obiw62010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw62020_flt.fits</td>
                <td>HST/obiw62020/obiw62020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw63010_flt.fits</td>
                <td>HST/obiw63010/obiw63010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw63020_flt.fits</td>
                <td>HST/obiw63020/obiw63020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw64010_flt.fits</td>
                <td>HST/obiw64010/obiw64010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw64020_flt.fits</td>
                <td>HST/obiw64020/obiw64020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw65010_flt.fits</td>
                <td>HST/obiw65010/obiw65010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw65020_flt.fits</td>
                <td>HST/obiw65020/obiw65020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw66010_flt.fits</td>
                <td>HST/obiw66010/obiw66010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw66020_flt.fits</td>
                <td>HST/obiw66020/obiw66020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw67010_flt.fits</td>
                <td>HST/obiw67010/obiw67010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw67020_flt.fits</td>
                <td>HST/obiw67020/obiw67020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw68010_flt.fits</td>
                <td>HST/obiw68010/obiw68010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw68020_flt.fits</td>
                <td>HST/obiw68020/obiw68020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw71010_flt.fits</td>
                <td>HST/obiw71010/obiw71010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw71020_flt.fits</td>
                <td>HST/obiw71020/obiw71020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw72010_flt.fits</td>
                <td>HST/obiw72010/obiw72010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw72020_flt.fits</td>
                <td>HST/obiw72020/obiw72020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw73010_flt.fits</td>
                <td>HST/obiw73010/obiw73010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw73020_flt.fits</td>
                <td>HST/obiw73020/obiw73020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw74010_flt.fits</td>
                <td>HST/obiw74010/obiw74010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw74020_flt.fits</td>
                <td>HST/obiw74020/obiw74020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw75010_flt.fits</td>
                <td>HST/obiw75010/obiw75010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw75020_flt.fits</td>
                <td>HST/obiw75020/obiw75020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw76010_flt.fits</td>
                <td>HST/obiw76010/obiw76010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw76020_flt.fits</td>
                <td>HST/obiw76020/obiw76020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw77010_flt.fits</td>
                <td>HST/obiw77010/obiw77010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw77020_flt.fits</td>
                <td>HST/obiw77020/obiw77020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw78010_flt.fits</td>
                <td>HST/obiw78010/obiw78010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw78020_flt.fits</td>
                <td>HST/obiw78020/obiw78020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw81010_flt.fits</td>
                <td>HST/obiw81010/obiw81010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw81020_flt.fits</td>
                <td>HST/obiw81020/obiw81020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw81030_flt.fits</td>
                <td>HST/obiw81030/obiw81030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw82010_flt.fits</td>
                <td>HST/obiw82010/obiw82010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw82020_flt.fits</td>
                <td>HST/obiw82020/obiw82020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw82030_flt.fits</td>
                <td>HST/obiw82030/obiw82030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw83010_flt.fits</td>
                <td>HST/obiw83010/obiw83010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw83020_flt.fits</td>
                <td>HST/obiw83020/obiw83020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw84010_flt.fits</td>
                <td>HST/obiw84010/obiw84010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw84020_flt.fits</td>
                <td>HST/obiw84020/obiw84020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw84030_flt.fits</td>
                <td>HST/obiw84030/obiw84030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw85010_flt.fits</td>
                <td>HST/obiw85010/obiw85010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw85020_flt.fits</td>
                <td>HST/obiw85020/obiw85020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw85030_flt.fits</td>
                <td>HST/obiw85030/obiw85030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw86010_flt.fits</td>
                <td>HST/obiw86010/obiw86010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw86020_flt.fits</td>
                <td>HST/obiw86020/obiw86020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw86030_flt.fits</td>
                <td>HST/obiw86030/obiw86030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw87010_flt.fits</td>
                <td>HST/obiw87010/obiw87010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw87020_flt.fits</td>
                <td>HST/obiw87020/obiw87020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw87030_flt.fits</td>
                <td>HST/obiw87030/obiw87030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw88010_flt.fits</td>
                <td>HST/obiw88010/obiw88010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw88020_flt.fits</td>
                <td>HST/obiw88020/obiw88020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw88030_flt.fits</td>
                <td>HST/obiw88030/obiw88030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw91010_flt.fits</td>
                <td>HST/obiw91010/obiw91010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw91020_flt.fits</td>
                <td>HST/obiw91020/obiw91020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw92010_flt.fits</td>
                <td>HST/obiw92010/obiw92010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw92020_flt.fits</td>
                <td>HST/obiw92020/obiw92020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw93010_flt.fits</td>
                <td>HST/obiw93010/obiw93010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw93020_flt.fits</td>
                <td>HST/obiw93020/obiw93020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw94010_flt.fits</td>
                <td>HST/obiw94010/obiw94010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw94020_flt.fits</td>
                <td>HST/obiw94020/obiw94020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw95010_flt.fits</td>
                <td>HST/obiw95010/obiw95010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw95020_flt.fits</td>
                <td>HST/obiw95020/obiw95020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw96010_flt.fits</td>
                <td>HST/obiw96010/obiw96010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw96020_flt.fits</td>
                <td>HST/obiw96020/obiw96020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw97010_flt.fits</td>
                <td>HST/obiw97010/obiw97010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw97020_flt.fits</td>
                <td>HST/obiw97020/obiw97020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw98010_flt.fits</td>
                <td>HST/obiw98010/obiw98010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiw98020_flt.fits</td>
                <td>HST/obiw98020/obiw98020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa1010_flt.fits</td>
                <td>HST/obiwa1010/obiwa1010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa2010_flt.fits</td>
                <td>HST/obiwa2010/obiwa2010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa3010_flt.fits</td>
                <td>HST/obiwa3010/obiwa3010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa3020_flt.fits</td>
                <td>HST/obiwa3020/obiwa3020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa4010_flt.fits</td>
                <td>HST/obiwa4010/obiwa4010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa5010_flt.fits</td>
                <td>HST/obiwa5010/obiwa5010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa6010_flt.fits</td>
                <td>HST/obiwa6010/obiwa6010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa7010_flt.fits</td>
                <td>HST/obiwa7010/obiwa7010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa7020_flt.fits</td>
                <td>HST/obiwa7020/obiwa7020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwa8010_flt.fits</td>
                <td>HST/obiwa8010/obiwa8010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb5010_flt.fits</td>
                <td>HST/obiwb5010/obiwb5010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb5020_flt.fits</td>
                <td>HST/obiwb5020/obiwb5020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb6010_flt.fits</td>
                <td>HST/obiwb6010/obiwb6010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb6020_flt.fits</td>
                <td>HST/obiwb6020/obiwb6020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb7010_flt.fits</td>
                <td>HST/obiwb7010/obiwb7010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb7020_flt.fits</td>
                <td>HST/obiwb7020/obiwb7020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb8010_flt.fits</td>
                <td>HST/obiwb8010/obiwb8010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obiwb8020_flt.fits</td>
                <td>HST/obiwb8020/obiwb8020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01010_flt.fits</td>
                <td>HST/obqm01010/obqm01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm01020_flt.fits</td>
                <td>HST/obqm01020/obqm01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02010_flt.fits</td>
                <td>HST/obqm02010/obqm02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm02020_flt.fits</td>
                <td>HST/obqm02020/obqm02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03010_flt.fits</td>
                <td>HST/obqm03010/obqm03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obqm03020_flt.fits</td>
                <td>HST/obqm03020/obqm03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01010_flt.fits</td>
                <td>HST/ocbc01010/ocbc01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01030_flt.fits</td>
                <td>HST/ocbc01030/ocbc01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01050_flt.fits</td>
                <td>HST/ocbc01050/ocbc01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02010_flt.fits</td>
                <td>HST/ocbc02010/ocbc02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02030_flt.fits</td>
                <td>HST/ocbc02030/ocbc02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02050_flt.fits</td>
                <td>HST/ocbc02050/ocbc02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03010_flt.fits</td>
                <td>HST/ocbc03010/ocbc03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03030_flt.fits</td>
                <td>HST/ocbc03030/ocbc03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03050_flt.fits</td>
                <td>HST/ocbc03050/ocbc03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04010_flt.fits</td>
                <td>HST/ocbc04010/ocbc04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04030_flt.fits</td>
                <td>HST/ocbc04030/ocbc04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04050_flt.fits</td>
                <td>HST/ocbc04050/ocbc04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh01010_flt.fits</td>
                <td>HST/occh01010/occh01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh01020_flt.fits</td>
                <td>HST/occh01020/occh01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh02010_flt.fits</td>
                <td>HST/occh02010/occh02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh02020_flt.fits</td>
                <td>HST/occh02020/occh02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh03010_flt.fits</td>
                <td>HST/occh03010/occh03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh03020_flt.fits</td>
                <td>HST/occh03020/occh03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh10010_flt.fits</td>
                <td>HST/occh10010/occh10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh11010_flt.fits</td>
                <td>HST/occh11010/occh11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh12010_flt.fits</td>
                <td>HST/occh12010/occh12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh20010_flt.fits</td>
                <td>HST/occh20010/occh20010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh20020_flt.fits</td>
                <td>HST/occh20020/occh20020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh21010_flt.fits</td>
                <td>HST/occh21010/occh21010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh21020_flt.fits</td>
                <td>HST/occh21020/occh21020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh22010_flt.fits</td>
                <td>HST/occh22010/occh22010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh22020_flt.fits</td>
                <td>HST/occh22020/occh22020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh30010_flt.fits</td>
                <td>HST/occh30010/occh30010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh30020_flt.fits</td>
                <td>HST/occh30020/occh30020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh31010_flt.fits</td>
                <td>HST/occh31010/occh31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh31020_flt.fits</td>
                <td>HST/occh31020/occh31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh32010_flt.fits</td>
                <td>HST/occh32010/occh32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh32020_flt.fits</td>
                <td>HST/occh32020/occh32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh40010_flt.fits</td>
                <td>HST/occh40010/occh40010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh40020_flt.fits</td>
                <td>HST/occh40020/occh40020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh41010_flt.fits</td>
                <td>HST/occh41010/occh41010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh41020_flt.fits</td>
                <td>HST/occh41020/occh41020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh42010_flt.fits</td>
                <td>HST/occh42010/occh42010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/occh42020_flt.fits</td>
                <td>HST/occh42020/occh42020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc01010_flt.fits</td>
                <td>HST/ocjc01010/ocjc01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc01020_flt.fits</td>
                <td>HST/ocjc01020/ocjc01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc01030_flt.fits</td>
                <td>HST/ocjc01030/ocjc01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc02010_flt.fits</td>
                <td>HST/ocjc02010/ocjc02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc02020_flt.fits</td>
                <td>HST/ocjc02020/ocjc02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc02030_flt.fits</td>
                <td>HST/ocjc02030/ocjc02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc03010_flt.fits</td>
                <td>HST/ocjc03010/ocjc03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc03020_flt.fits</td>
                <td>HST/ocjc03020/ocjc03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc03030_flt.fits</td>
                <td>HST/ocjc03030/ocjc03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc04010_flt.fits</td>
                <td>HST/ocjc04010/ocjc04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc04020_flt.fits</td>
                <td>HST/ocjc04020/ocjc04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc04030_flt.fits</td>
                <td>HST/ocjc04030/ocjc04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc05010_flt.fits</td>
                <td>HST/ocjc05010/ocjc05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc05020_flt.fits</td>
                <td>HST/ocjc05020/ocjc05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc05030_flt.fits</td>
                <td>HST/ocjc05030/ocjc05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc06010_flt.fits</td>
                <td>HST/ocjc06010/ocjc06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc06020_flt.fits</td>
                <td>HST/ocjc06020/ocjc06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc06030_flt.fits</td>
                <td>HST/ocjc06030/ocjc06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc07010_flt.fits</td>
                <td>HST/ocjc07010/ocjc07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc07020_flt.fits</td>
                <td>HST/ocjc07020/ocjc07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc07030_flt.fits</td>
                <td>HST/ocjc07030/ocjc07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc08010_flt.fits</td>
                <td>HST/ocjc08010/ocjc08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc08020_flt.fits</td>
                <td>HST/ocjc08020/ocjc08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc08030_flt.fits</td>
                <td>HST/ocjc08030/ocjc08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc11010_flt.fits</td>
                <td>HST/ocjc11010/ocjc11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc11020_flt.fits</td>
                <td>HST/ocjc11020/ocjc11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc11030_flt.fits</td>
                <td>HST/ocjc11030/ocjc11030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc12010_flt.fits</td>
                <td>HST/ocjc12010/ocjc12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc12020_flt.fits</td>
                <td>HST/ocjc12020/ocjc12020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc12030_flt.fits</td>
                <td>HST/ocjc12030/ocjc12030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc13010_flt.fits</td>
                <td>HST/ocjc13010/ocjc13010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc13020_flt.fits</td>
                <td>HST/ocjc13020/ocjc13020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc13030_flt.fits</td>
                <td>HST/ocjc13030/ocjc13030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc14010_flt.fits</td>
                <td>HST/ocjc14010/ocjc14010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc14020_flt.fits</td>
                <td>HST/ocjc14020/ocjc14020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc14030_flt.fits</td>
                <td>HST/ocjc14030/ocjc14030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc15010_flt.fits</td>
                <td>HST/ocjc15010/ocjc15010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc15020_flt.fits</td>
                <td>HST/ocjc15020/ocjc15020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc15030_flt.fits</td>
                <td>HST/ocjc15030/ocjc15030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc16010_flt.fits</td>
                <td>HST/ocjc16010/ocjc16010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc16020_flt.fits</td>
                <td>HST/ocjc16020/ocjc16020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc16030_flt.fits</td>
                <td>HST/ocjc16030/ocjc16030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc17010_flt.fits</td>
                <td>HST/ocjc17010/ocjc17010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc17020_flt.fits</td>
                <td>HST/ocjc17020/ocjc17020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc17030_flt.fits</td>
                <td>HST/ocjc17030/ocjc17030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc18010_flt.fits</td>
                <td>HST/ocjc18010/ocjc18010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc18020_flt.fits</td>
                <td>HST/ocjc18020/ocjc18020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc18030_flt.fits</td>
                <td>HST/ocjc18030/ocjc18030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc51010_flt.fits</td>
                <td>HST/ocjc51010/ocjc51010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc52010_flt.fits</td>
                <td>HST/ocjc52010/ocjc52010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc53010_flt.fits</td>
                <td>HST/ocjc53010/ocjc53010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc53020_flt.fits</td>
                <td>HST/ocjc53020/ocjc53020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc54010_flt.fits</td>
                <td>HST/ocjc54010/ocjc54010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc55010_flt.fits</td>
                <td>HST/ocjc55010/ocjc55010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc56010_flt.fits</td>
                <td>HST/ocjc56010/ocjc56010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc57010_flt.fits</td>
                <td>HST/ocjc57010/ocjc57010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc57020_flt.fits</td>
                <td>HST/ocjc57020/ocjc57020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocjc58010_flt.fits</td>
                <td>HST/ocjc58010/ocjc58010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn21010_flt.fits</td>
                <td>HST/odkn21010/odkn21010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn22010_flt.fits</td>
                <td>HST/odkn22010/odkn22010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn23010_flt.fits</td>
                <td>HST/odkn23010/odkn23010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn24010_flt.fits</td>
                <td>HST/odkn24010/odkn24010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn25010_flt.fits</td>
                <td>HST/odkn25010/odkn25010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn26010_flt.fits</td>
                <td>HST/odkn26010/odkn26010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn27010_flt.fits</td>
                <td>HST/odkn27010/odkn27010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn31010_flt.fits</td>
                <td>HST/odkn31010/odkn31010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn31020_flt.fits</td>
                <td>HST/odkn31020/odkn31020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn32010_flt.fits</td>
                <td>HST/odkn32010/odkn32010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn32020_flt.fits</td>
                <td>HST/odkn32020/odkn32020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn33010_flt.fits</td>
                <td>HST/odkn33010/odkn33010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn33020_flt.fits</td>
                <td>HST/odkn33020/odkn33020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn34010_flt.fits</td>
                <td>HST/odkn34010/odkn34010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn34020_flt.fits</td>
                <td>HST/odkn34020/odkn34020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn41010_flt.fits</td>
                <td>HST/odkn41010/odkn41010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn41020_flt.fits</td>
                <td>HST/odkn41020/odkn41020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn41030_flt.fits</td>
                <td>HST/odkn41030/odkn41030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn42010_flt.fits</td>
                <td>HST/odkn42010/odkn42010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn42020_flt.fits</td>
                <td>HST/odkn42020/odkn42020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn42030_flt.fits</td>
                <td>HST/odkn42030/odkn42030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn43010_flt.fits</td>
                <td>HST/odkn43010/odkn43010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn43020_flt.fits</td>
                <td>HST/odkn43020/odkn43020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn43030_flt.fits</td>
                <td>HST/odkn43030/odkn43030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn44010_flt.fits</td>
                <td>HST/odkn44010/odkn44010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn44020_flt.fits</td>
                <td>HST/odkn44020/odkn44020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn44030_flt.fits</td>
                <td>HST/odkn44030/odkn44030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn45010_flt.fits</td>
                <td>HST/odkn45010/odkn45010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn45020_flt.fits</td>
                <td>HST/odkn45020/odkn45020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn45030_flt.fits</td>
                <td>HST/odkn45030/odkn45030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn46010_flt.fits</td>
                <td>HST/odkn46010/odkn46010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn46020_flt.fits</td>
                <td>HST/odkn46020/odkn46020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn46030_flt.fits</td>
                <td>HST/odkn46030/odkn46030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn51010_flt.fits</td>
                <td>HST/odkn51010/odkn51010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn51020_flt.fits</td>
                <td>HST/odkn51020/odkn51020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn51030_flt.fits</td>
                <td>HST/odkn51030/odkn51030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn52010_flt.fits</td>
                <td>HST/odkn52010/odkn52010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn52020_flt.fits</td>
                <td>HST/odkn52020/odkn52020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn52030_flt.fits</td>
                <td>HST/odkn52030/odkn52030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn53010_flt.fits</td>
                <td>HST/odkn53010/odkn53010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn53020_flt.fits</td>
                <td>HST/odkn53020/odkn53020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn53030_flt.fits</td>
                <td>HST/odkn53030/odkn53030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn54010_flt.fits</td>
                <td>HST/odkn54010/odkn54010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn54020_flt.fits</td>
                <td>HST/odkn54020/odkn54020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn54030_flt.fits</td>
                <td>HST/odkn54030/odkn54030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn61010_flt.fits</td>
                <td>HST/odkn61010/odkn61010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn61020_flt.fits</td>
                <td>HST/odkn61020/odkn61020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn61030_flt.fits</td>
                <td>HST/odkn61030/odkn61030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn61040_flt.fits</td>
                <td>HST/odkn61040/odkn61040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn62010_flt.fits</td>
                <td>HST/odkn62010/odkn62010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn62020_flt.fits</td>
                <td>HST/odkn62020/odkn62020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn62030_flt.fits</td>
                <td>HST/odkn62030/odkn62030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn62040_flt.fits</td>
                <td>HST/odkn62040/odkn62040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn63010_flt.fits</td>
                <td>HST/odkn63010/odkn63010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn63020_flt.fits</td>
                <td>HST/odkn63020/odkn63020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn63030_flt.fits</td>
                <td>HST/odkn63030/odkn63030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn63040_flt.fits</td>
                <td>HST/odkn63040/odkn63040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn64010_flt.fits</td>
                <td>HST/odkn64010/odkn64010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn64020_flt.fits</td>
                <td>HST/odkn64020/odkn64020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn64030_flt.fits</td>
                <td>HST/odkn64030/odkn64030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn64040_flt.fits</td>
                <td>HST/odkn64040/odkn64040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn65010_flt.fits</td>
                <td>HST/odkn65010/odkn65010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn65020_flt.fits</td>
                <td>HST/odkn65020/odkn65020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn65030_flt.fits</td>
                <td>HST/odkn65030/odkn65030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn65040_flt.fits</td>
                <td>HST/odkn65040/odkn65040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn66010_flt.fits</td>
                <td>HST/odkn66010/odkn66010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn66020_flt.fits</td>
                <td>HST/odkn66020/odkn66020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn66030_flt.fits</td>
                <td>HST/odkn66030/odkn66030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn66040_flt.fits</td>
                <td>HST/odkn66040/odkn66040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn81010_flt.fits</td>
                <td>HST/odkn81010/odkn81010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn81020_flt.fits</td>
                <td>HST/odkn81020/odkn81020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn81030_flt.fits</td>
                <td>HST/odkn81030/odkn81030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn81040_flt.fits</td>
                <td>HST/odkn81040/odkn81040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn82010_flt.fits</td>
                <td>HST/odkn82010/odkn82010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn82020_flt.fits</td>
                <td>HST/odkn82020/odkn82020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn82030_flt.fits</td>
                <td>HST/odkn82030/odkn82030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn82040_flt.fits</td>
                <td>HST/odkn82040/odkn82040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn83010_flt.fits</td>
                <td>HST/odkn83010/odkn83010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn83020_flt.fits</td>
                <td>HST/odkn83020/odkn83020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn83030_flt.fits</td>
                <td>HST/odkn83030/odkn83030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn83040_flt.fits</td>
                <td>HST/odkn83040/odkn83040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn84010_flt.fits</td>
                <td>HST/odkn84010/odkn84010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn84020_flt.fits</td>
                <td>HST/odkn84020/odkn84020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn84030_flt.fits</td>
                <td>HST/odkn84030/odkn84030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odkn84040_flt.fits</td>
                <td>HST/odkn84040/odkn84040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv01010_flt.fits</td>
                <td>HST/odlv01010/odlv01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv01020_flt.fits</td>
                <td>HST/odlv01020/odlv01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv02010_flt.fits</td>
                <td>HST/odlv02010/odlv02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv02020_flt.fits</td>
                <td>HST/odlv02020/odlv02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv03010_flt.fits</td>
                <td>HST/odlv03010/odlv03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv03020_flt.fits</td>
                <td>HST/odlv03020/odlv03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv04010_flt.fits</td>
                <td>HST/odlv04010/odlv04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv04020_flt.fits</td>
                <td>HST/odlv04020/odlv04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv05010_flt.fits</td>
                <td>HST/odlv05010/odlv05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv05020_flt.fits</td>
                <td>HST/odlv05020/odlv05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv11010_flt.fits</td>
                <td>HST/odlv11010/odlv11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odlv11020_flt.fits</td>
                <td>HST/odlv11020/odlv11020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq01010_flt.fits</td>
                <td>HST/odrq01010/odrq01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq01020_flt.fits</td>
                <td>HST/odrq01020/odrq01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq01030_flt.fits</td>
                <td>HST/odrq01030/odrq01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq02010_flt.fits</td>
                <td>HST/odrq02010/odrq02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq02020_flt.fits</td>
                <td>HST/odrq02020/odrq02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq02030_flt.fits</td>
                <td>HST/odrq02030/odrq02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq03010_flt.fits</td>
                <td>HST/odrq03010/odrq03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq03020_flt.fits</td>
                <td>HST/odrq03020/odrq03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq03030_flt.fits</td>
                <td>HST/odrq03030/odrq03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq03040_flt.fits</td>
                <td>HST/odrq03040/odrq03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq04010_flt.fits</td>
                <td>HST/odrq04010/odrq04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq04020_flt.fits</td>
                <td>HST/odrq04020/odrq04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq04030_flt.fits</td>
                <td>HST/odrq04030/odrq04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq05010_flt.fits</td>
                <td>HST/odrq05010/odrq05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq05020_flt.fits</td>
                <td>HST/odrq05020/odrq05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq05030_flt.fits</td>
                <td>HST/odrq05030/odrq05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq06010_flt.fits</td>
                <td>HST/odrq06010/odrq06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq06020_flt.fits</td>
                <td>HST/odrq06020/odrq06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq06030_flt.fits</td>
                <td>HST/odrq06030/odrq06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq07010_flt.fits</td>
                <td>HST/odrq07010/odrq07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq07020_flt.fits</td>
                <td>HST/odrq07020/odrq07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq07030_flt.fits</td>
                <td>HST/odrq07030/odrq07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq07040_flt.fits</td>
                <td>HST/odrq07040/odrq07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq08010_flt.fits</td>
                <td>HST/odrq08010/odrq08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq08020_flt.fits</td>
                <td>HST/odrq08020/odrq08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odrq08030_flt.fits</td>
                <td>HST/odrq08030/odrq08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy37020_flt.fits</td>
                <td>HST/odxy37020/odxy37020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy38020_flt.fits</td>
                <td>HST/odxy38020/odxy38020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy38030_flt.fits</td>
                <td>HST/odxy38030/odxy38030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy39020_flt.fits</td>
                <td>HST/odxy39020/odxy39020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odxy40020_flt.fits</td>
                <td>HST/odxy40020/odxy40020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01010_flt.fits</td>
                <td>HST/oe1l01010/oe1l01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01020_flt.fits</td>
                <td>HST/oe1l01020/oe1l01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01030_flt.fits</td>
                <td>HST/oe1l01030/oe1l01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01040_flt.fits</td>
                <td>HST/oe1l01040/oe1l01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01050_flt.fits</td>
                <td>HST/oe1l01050/oe1l01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01060_flt.fits</td>
                <td>HST/oe1l01060/oe1l01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01070_flt.fits</td>
                <td>HST/oe1l01070/oe1l01070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01080_flt.fits</td>
                <td>HST/oe1l01080/oe1l01080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l01090_flt.fits</td>
                <td>HST/oe1l01090/oe1l01090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02010_flt.fits</td>
                <td>HST/oe1l02010/oe1l02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02020_flt.fits</td>
                <td>HST/oe1l02020/oe1l02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02030_flt.fits</td>
                <td>HST/oe1l02030/oe1l02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02040_flt.fits</td>
                <td>HST/oe1l02040/oe1l02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02050_flt.fits</td>
                <td>HST/oe1l02050/oe1l02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02060_flt.fits</td>
                <td>HST/oe1l02060/oe1l02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02070_flt.fits</td>
                <td>HST/oe1l02070/oe1l02070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02080_flt.fits</td>
                <td>HST/oe1l02080/oe1l02080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l02090_flt.fits</td>
                <td>HST/oe1l02090/oe1l02090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03010_flt.fits</td>
                <td>HST/oe1l03010/oe1l03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03020_flt.fits</td>
                <td>HST/oe1l03020/oe1l03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03030_flt.fits</td>
                <td>HST/oe1l03030/oe1l03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03040_flt.fits</td>
                <td>HST/oe1l03040/oe1l03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03050_flt.fits</td>
                <td>HST/oe1l03050/oe1l03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03060_flt.fits</td>
                <td>HST/oe1l03060/oe1l03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03070_flt.fits</td>
                <td>HST/oe1l03070/oe1l03070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03080_flt.fits</td>
                <td>HST/oe1l03080/oe1l03080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l03090_flt.fits</td>
                <td>HST/oe1l03090/oe1l03090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04010_flt.fits</td>
                <td>HST/oe1l04010/oe1l04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04020_flt.fits</td>
                <td>HST/oe1l04020/oe1l04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04030_flt.fits</td>
                <td>HST/oe1l04030/oe1l04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04040_flt.fits</td>
                <td>HST/oe1l04040/oe1l04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04050_flt.fits</td>
                <td>HST/oe1l04050/oe1l04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04060_flt.fits</td>
                <td>HST/oe1l04060/oe1l04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04070_flt.fits</td>
                <td>HST/oe1l04070/oe1l04070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04080_flt.fits</td>
                <td>HST/oe1l04080/oe1l04080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l04090_flt.fits</td>
                <td>HST/oe1l04090/oe1l04090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05010_flt.fits</td>
                <td>HST/oe1l05010/oe1l05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05020_flt.fits</td>
                <td>HST/oe1l05020/oe1l05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05030_flt.fits</td>
                <td>HST/oe1l05030/oe1l05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05040_flt.fits</td>
                <td>HST/oe1l05040/oe1l05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05050_flt.fits</td>
                <td>HST/oe1l05050/oe1l05050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05060_flt.fits</td>
                <td>HST/oe1l05060/oe1l05060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05070_flt.fits</td>
                <td>HST/oe1l05070/oe1l05070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05080_flt.fits</td>
                <td>HST/oe1l05080/oe1l05080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l05090_flt.fits</td>
                <td>HST/oe1l05090/oe1l05090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06010_flt.fits</td>
                <td>HST/oe1l06010/oe1l06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06020_flt.fits</td>
                <td>HST/oe1l06020/oe1l06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06030_flt.fits</td>
                <td>HST/oe1l06030/oe1l06030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06040_flt.fits</td>
                <td>HST/oe1l06040/oe1l06040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06050_flt.fits</td>
                <td>HST/oe1l06050/oe1l06050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06060_flt.fits</td>
                <td>HST/oe1l06060/oe1l06060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06070_flt.fits</td>
                <td>HST/oe1l06070/oe1l06070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06080_flt.fits</td>
                <td>HST/oe1l06080/oe1l06080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l06090_flt.fits</td>
                <td>HST/oe1l06090/oe1l06090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07010_flt.fits</td>
                <td>HST/oe1l07010/oe1l07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07020_flt.fits</td>
                <td>HST/oe1l07020/oe1l07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07030_flt.fits</td>
                <td>HST/oe1l07030/oe1l07030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07040_flt.fits</td>
                <td>HST/oe1l07040/oe1l07040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07050_flt.fits</td>
                <td>HST/oe1l07050/oe1l07050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07060_flt.fits</td>
                <td>HST/oe1l07060/oe1l07060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07070_flt.fits</td>
                <td>HST/oe1l07070/oe1l07070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07080_flt.fits</td>
                <td>HST/oe1l07080/oe1l07080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l07090_flt.fits</td>
                <td>HST/oe1l07090/oe1l07090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08010_flt.fits</td>
                <td>HST/oe1l08010/oe1l08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08020_flt.fits</td>
                <td>HST/oe1l08020/oe1l08020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08030_flt.fits</td>
                <td>HST/oe1l08030/oe1l08030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08040_flt.fits</td>
                <td>HST/oe1l08040/oe1l08040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08050_flt.fits</td>
                <td>HST/oe1l08050/oe1l08050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08060_flt.fits</td>
                <td>HST/oe1l08060/oe1l08060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08070_flt.fits</td>
                <td>HST/oe1l08070/oe1l08070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08080_flt.fits</td>
                <td>HST/oe1l08080/oe1l08080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l08090_flt.fits</td>
                <td>HST/oe1l08090/oe1l08090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55010_flt.fits</td>
                <td>HST/oe1l55010/oe1l55010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55020_flt.fits</td>
                <td>HST/oe1l55020/oe1l55020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55030_flt.fits</td>
                <td>HST/oe1l55030/oe1l55030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55040_flt.fits</td>
                <td>HST/oe1l55040/oe1l55040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55050_flt.fits</td>
                <td>HST/oe1l55050/oe1l55050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55060_flt.fits</td>
                <td>HST/oe1l55060/oe1l55060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55070_flt.fits</td>
                <td>HST/oe1l55070/oe1l55070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55080_flt.fits</td>
                <td>HST/oe1l55080/oe1l55080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l55090_flt.fits</td>
                <td>HST/oe1l55090/oe1l55090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56010_flt.fits</td>
                <td>HST/oe1l56010/oe1l56010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56020_flt.fits</td>
                <td>HST/oe1l56020/oe1l56020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56030_flt.fits</td>
                <td>HST/oe1l56030/oe1l56030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56040_flt.fits</td>
                <td>HST/oe1l56040/oe1l56040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56050_flt.fits</td>
                <td>HST/oe1l56050/oe1l56050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56060_flt.fits</td>
                <td>HST/oe1l56060/oe1l56060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56070_flt.fits</td>
                <td>HST/oe1l56070/oe1l56070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56080_flt.fits</td>
                <td>HST/oe1l56080/oe1l56080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l56090_flt.fits</td>
                <td>HST/oe1l56090/oe1l56090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57010_flt.fits</td>
                <td>HST/oe1l57010/oe1l57010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57020_flt.fits</td>
                <td>HST/oe1l57020/oe1l57020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57030_flt.fits</td>
                <td>HST/oe1l57030/oe1l57030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57040_flt.fits</td>
                <td>HST/oe1l57040/oe1l57040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57050_flt.fits</td>
                <td>HST/oe1l57050/oe1l57050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57060_flt.fits</td>
                <td>HST/oe1l57060/oe1l57060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57070_flt.fits</td>
                <td>HST/oe1l57070/oe1l57070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57080_flt.fits</td>
                <td>HST/oe1l57080/oe1l57080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l57090_flt.fits</td>
                <td>HST/oe1l57090/oe1l57090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58010_flt.fits</td>
                <td>HST/oe1l58010/oe1l58010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58020_flt.fits</td>
                <td>HST/oe1l58020/oe1l58020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58030_flt.fits</td>
                <td>HST/oe1l58030/oe1l58030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58040_flt.fits</td>
                <td>HST/oe1l58040/oe1l58040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58050_flt.fits</td>
                <td>HST/oe1l58050/oe1l58050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58060_flt.fits</td>
                <td>HST/oe1l58060/oe1l58060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58070_flt.fits</td>
                <td>HST/oe1l58070/oe1l58070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58080_flt.fits</td>
                <td>HST/oe1l58080/oe1l58080_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1l58090_flt.fits</td>
                <td>HST/oe1l58090/oe1l58090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c01010_flt.fits</td>
                <td>HST/oe3c01010/oe3c01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c02010_flt.fits</td>
                <td>HST/oe3c02010/oe3c02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c03010_flt.fits</td>
                <td>HST/oe3c03010/oe3c03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c04010_flt.fits</td>
                <td>HST/oe3c04010/oe3c04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c05010_flt.fits</td>
                <td>HST/oe3c05010/oe3c05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c06010_flt.fits</td>
                <td>HST/oe3c06010/oe3c06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3c07010_flt.fits</td>
                <td>HST/oe3c07010/oe3c07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m01010_flt.fits</td>
                <td>HST/oe3m01010/oe3m01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m01020_flt.fits</td>
                <td>HST/oe3m01020/oe3m01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m02010_flt.fits</td>
                <td>HST/oe3m02010/oe3m02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m02020_flt.fits</td>
                <td>HST/oe3m02020/oe3m02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m03010_flt.fits</td>
                <td>HST/oe3m03010/oe3m03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m03020_flt.fits</td>
                <td>HST/oe3m03020/oe3m03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m04010_flt.fits</td>
                <td>HST/oe3m04010/oe3m04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe3m04020_flt.fits</td>
                <td>HST/oe3m04020/oe3m04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg01010_flt.fits</td>
                <td>HST/oebg01010/oebg01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg01020_flt.fits</td>
                <td>HST/oebg01020/oebg01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg02010_flt.fits</td>
                <td>HST/oebg02010/oebg02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg02020_flt.fits</td>
                <td>HST/oebg02020/oebg02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg03010_flt.fits</td>
                <td>HST/oebg03010/oebg03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg03020_flt.fits</td>
                <td>HST/oebg03020/oebg03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg04010_flt.fits</td>
                <td>HST/oebg04010/oebg04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebg04020_flt.fits</td>
                <td>HST/oebg04020/oebg04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx01010_flt.fits</td>
                <td>HST/oebx01010/oebx01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02010_flt.fits</td>
                <td>HST/oebx02010/oebx02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx02020_flt.fits</td>
                <td>HST/oebx02020/oebx02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03010_flt.fits</td>
                <td>HST/oebx03010/oebx03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oebx03020_flt.fits</td>
                <td>HST/oebx03020/oebx03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf01010_flt.fits</td>
                <td>HST/oenf01010/oenf01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf01020_flt.fits</td>
                <td>HST/oenf01020/oenf01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf02010_flt.fits</td>
                <td>HST/oenf02010/oenf02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf02020_flt.fits</td>
                <td>HST/oenf02020/oenf02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf03010_flt.fits</td>
                <td>HST/oenf03010/oenf03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oenf03020_flt.fits</td>
                <td>HST/oenf03020/oenf03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo101020_flt.fits</td>
                <td>HST/oeo101020/oeo101020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo102020_flt.fits</td>
                <td>HST/oeo102020/oeo102020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo103ctq_flt.fits</td>
                <td>HST/oeo103ctq/oeo103ctq_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo103cuq_flt.fits</td>
                <td>HST/oeo103cuq/oeo103cuq_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo103cvq_flt.fits</td>
                <td>HST/oeo103cvq/oeo103cvq_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo104020_flt.fits</td>
                <td>HST/oeo104020/oeo104020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo105020_flt.fits</td>
                <td>HST/oeo105020/oeo105020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo106020_flt.fits</td>
                <td>HST/oeo106020/oeo106020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo107040_flt.fits</td>
                <td>HST/oeo107040/oeo107040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo107050_flt.fits</td>
                <td>HST/oeo107050/oeo107050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo107060_flt.fits</td>
                <td>HST/oeo107060/oeo107060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oeo108020_flt.fits</td>
                <td>HST/oeo108020/oeo108020_flt.fits</td>
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
<<< Downloading File: mast:HST/product/ocjc53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc53020/ocjc53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc53020/ocjc53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc54010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc54010/ocjc54010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc54010/ocjc54010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc54010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc55010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc55010/ocjc55010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc55010/ocjc55010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc55010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc56010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc56010/ocjc56010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc56010/ocjc56010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc56010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc57010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc57010/ocjc57010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc57010/ocjc57010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc57010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc57020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc57020/ocjc57020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc57020/ocjc57020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc57020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc58010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc58010/ocjc58010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc58010/ocjc58010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc58010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn21010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn21010/odkn21010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn21010/odkn21010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn21010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn22010/odkn22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn22010/odkn22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn23010/odkn23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn23010/odkn23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn24010/odkn24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn24010/odkn24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn25010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn25010/odkn25010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn25010/odkn25010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn25010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn26010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn26010/odkn26010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn26010/odkn26010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn26010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn27010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn27010/odkn27010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn27010/odkn27010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn27010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn31010/odkn31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn31010/odkn31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn31020/odkn31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn31020/odkn31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn32010/odkn32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn32010/odkn32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn32020/odkn32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn32020/odkn32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn33010/odkn33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn33010/odkn33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn33020/odkn33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn33020/odkn33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn34010/odkn34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn34010/odkn34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn34020/odkn34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn34020/odkn34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn41010/odkn41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn41010/odkn41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn41020/odkn41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn41020/odkn41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn41030/odkn41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn41030/odkn41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn42010/odkn42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn42010/odkn42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn42020/odkn42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn42020/odkn42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn42030/odkn42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn42030/odkn42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn43010/odkn43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn43010/odkn43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn43020/odkn43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn43020/odkn43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn43030/odkn43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn43030/odkn43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn44010/odkn44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn44010/odkn44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn44020/odkn44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn44020/odkn44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn44030/odkn44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn44030/odkn44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn45010/odkn45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn45010/odkn45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn45020/odkn45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn45020/odkn45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn45030/odkn45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn45030/odkn45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn46010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn46010/odkn46010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn46010/odkn46010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn46010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn46020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn46020/odkn46020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn46020/odkn46020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn46020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn46030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn46030/odkn46030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn46030/odkn46030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn46030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn51010/odkn51010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn51010/odkn51010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn51010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn51020/odkn51020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn51020/odkn51020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn51020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn51030/odkn51030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn51030/odkn51030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn51030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn52010/odkn52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn52010/odkn52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn52020/odkn52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn52020/odkn52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn52030/odkn52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn52030/odkn52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn53010/odkn53010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn53010/odkn53010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn53010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn53020/odkn53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn53020/odkn53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn53030/odkn53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn53030/odkn53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn54010/odkn54010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn54010/odkn54010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn54010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn54020/odkn54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn54020/odkn54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn54030/odkn54030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn54030/odkn54030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn54030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61010/odkn61010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61010/odkn61010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn61010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61020/odkn61020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61020/odkn61020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn61020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61030/odkn61030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61030/odkn61030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn61030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn61040/odkn61040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn61040/odkn61040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn61040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62010/odkn62010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62010/odkn62010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn62010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62020/odkn62020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62020/odkn62020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn62020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62030/odkn62030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62030/odkn62030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn62030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn62040/odkn62040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn62040/odkn62040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn62040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63010/odkn63010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63010/odkn63010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn63010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63020/odkn63020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63020/odkn63020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn63020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63030/odkn63030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63030/odkn63030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn63030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn63040/odkn63040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn63040/odkn63040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn63040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64010/odkn64010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64010/odkn64010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn64010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64020/odkn64020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64020/odkn64020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn64020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64030/odkn64030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64030/odkn64030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn64030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn64040/odkn64040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn64040/odkn64040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn64040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65010/odkn65010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65010/odkn65010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn65010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65020/odkn65020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65020/odkn65020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn65020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65030/odkn65030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65030/odkn65030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn65030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn65040/odkn65040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn65040/odkn65040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn65040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66010/odkn66010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66010/odkn66010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn66010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66020/odkn66020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66020/odkn66020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn66020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66030/odkn66030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66030/odkn66030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn66030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn66040/odkn66040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn66040/odkn66040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn66040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81010/odkn81010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81010/odkn81010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn81010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81020/odkn81020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81020/odkn81020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn81020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81030/odkn81030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81030/odkn81030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn81030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn81040/odkn81040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn81040/odkn81040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn81040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82010/odkn82010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82010/odkn82010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn82010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82020/odkn82020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82020/odkn82020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn82020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82030/odkn82030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82030/odkn82030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn82030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn82040/odkn82040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn82040/odkn82040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn82040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83010/odkn83010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83010/odkn83010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn83010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83020/odkn83020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83020/odkn83020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn83020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83030/odkn83030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83030/odkn83030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn83030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn83040/odkn83040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn83040/odkn83040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn83040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84010/odkn84010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84010/odkn84010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn84010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84020/odkn84020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84020/odkn84020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn84020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84030/odkn84030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84030/odkn84030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn84030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odkn84040/odkn84040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odkn84040/odkn84040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odkn84040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv01010/odlv01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv01010/odlv01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv01020/odlv01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv01020/odlv01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv02010/odlv02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv02010/odlv02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv02020/odlv02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv02020/odlv02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv03010/odlv03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv03010/odlv03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv03020/odlv03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv03020/odlv03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv04010/odlv04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv04010/odlv04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv04020/odlv04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv04020/odlv04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb7010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb7010/obiwb7010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb7010/obiwb7010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb7010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb7020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb7020/obiwb7020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb7020/obiwb7020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb7020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb8010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb8010/obiwb8010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb8010/obiwb8010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb8010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb8020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb8020/obiwb8020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb8020/obiwb8020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb8020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01010/obqm01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01010/obqm01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm01020/obqm01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm01020/obqm01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02010/obqm02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02010/obqm02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm02020/obqm02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm02020/obqm02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03010/obqm03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03010/obqm03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obqm03020/obqm03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obqm03020/obqm03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obqm03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01010/ocbc01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01010/ocbc01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01030/ocbc01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01030/ocbc01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01050/ocbc01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01050/ocbc01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02010/ocbc02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02010/ocbc02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02030/ocbc02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02030/ocbc02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02050/ocbc02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02050/ocbc02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03010/ocbc03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03010/ocbc03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03030/ocbc03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03030/ocbc03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03050/ocbc03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03050/ocbc03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04010/ocbc04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04010/ocbc04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04030/ocbc04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04030/ocbc04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04050/ocbc04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04050/ocbc04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocbc04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh01010/occh01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh01010/occh01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh01020/occh01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh01020/occh01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh02010/occh02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh02010/occh02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh02020/occh02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh02020/occh02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh03010/occh03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh03010/occh03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh03020/occh03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh03020/occh03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh10010/occh10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh10010/occh10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh11010/occh11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh11010/occh11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh12010/occh12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh12010/occh12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh20010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh20010/occh20010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh20010/occh20010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh20010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh20020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh20020/occh20020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh20020/occh20020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh20020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh21010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh21010/occh21010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh21010/occh21010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh21010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh21020/occh21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh21020/occh21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh22010/occh22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh22010/occh22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh22020/occh22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh22020/occh22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh30010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh30010/occh30010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh30010/occh30010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh30010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh30020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh30020/occh30020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh30020/occh30020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh30020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh31010/occh31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh31010/occh31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh31020/occh31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh31020/occh31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh32010/occh32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh32010/occh32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh32020/occh32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh32020/occh32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh40010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh40010/occh40010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh40010/occh40010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh40010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh40020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh40020/occh40020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh40020/occh40020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh40020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh41010/occh41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh41010/occh41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh41020/occh41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh41020/occh41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh42010/occh42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh42010/occh42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/occh42020/occh42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/occh42020/occh42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/occh42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc01010/ocjc01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc01010/ocjc01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc01020/ocjc01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc01020/ocjc01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc01030/ocjc01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc01030/ocjc01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc02010/ocjc02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc02010/ocjc02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc02020/ocjc02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc02020/ocjc02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc02030/ocjc02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc02030/ocjc02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc03010/ocjc03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc03010/ocjc03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc03020/ocjc03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc03020/ocjc03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc03030/ocjc03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc03030/ocjc03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc04010/ocjc04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc04010/ocjc04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc04020/ocjc04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc04020/ocjc04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc04030/ocjc04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc04030/ocjc04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc05010/ocjc05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc05010/ocjc05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc05020/ocjc05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc05020/ocjc05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc05030/ocjc05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc05030/ocjc05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc06010/ocjc06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc06010/ocjc06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc06020/ocjc06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc06020/ocjc06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc06030/ocjc06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc06030/ocjc06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc07010/ocjc07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc07010/ocjc07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc07020/ocjc07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc07020/ocjc07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc07030/ocjc07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc07030/ocjc07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc08010/ocjc08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc08010/ocjc08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc08020/ocjc08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc08020/ocjc08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc08030/ocjc08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc08030/ocjc08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc11010/ocjc11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc11010/ocjc11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc11020/ocjc11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc11020/ocjc11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc11030/ocjc11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc11030/ocjc11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc12010/ocjc12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc12010/ocjc12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc12020/ocjc12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc12020/ocjc12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc12030/ocjc12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc12030/ocjc12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc13010/ocjc13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc13010/ocjc13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc13020/ocjc13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc13020/ocjc13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc13030/ocjc13030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc13030/ocjc13030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc13030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc14010/ocjc14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc14010/ocjc14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc14020/ocjc14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc14020/ocjc14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc14030/ocjc14030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc14030/ocjc14030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc14030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc15010/ocjc15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc15010/ocjc15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc15020/ocjc15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc15020/ocjc15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc15030/ocjc15030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc15030/ocjc15030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc15030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc16010/ocjc16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc16010/ocjc16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc16020/ocjc16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc16020/ocjc16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc16030/ocjc16030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc16030/ocjc16030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc16030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc17010/ocjc17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc17010/ocjc17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc17020/ocjc17020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc17020/ocjc17020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc17020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc17030/ocjc17030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc17030/ocjc17030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc17030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc18010/ocjc18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc18010/ocjc18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc18020/ocjc18020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc18020/ocjc18020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc18020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc18030/ocjc18030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc18030/ocjc18030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc18030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc51010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc51010/ocjc51010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc51010/ocjc51010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc51010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc52010/ocjc52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc52010/ocjc52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc53010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocjc53010/ocjc53010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocjc53010/ocjc53010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/ocjc53010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o8tg01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o8tg01010/o8tg01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o8tg01010/o8tg01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/o8tg01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw01010/obiw01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw01010/obiw01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw01020/obiw01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw01020/obiw01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw02010/obiw02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw02010/obiw02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw02020/obiw02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw02020/obiw02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw03010/obiw03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw03010/obiw03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw03020/obiw03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw03020/obiw03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw04010/obiw04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw04010/obiw04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw04020/obiw04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw04020/obiw04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw05010/obiw05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw05010/obiw05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw05020/obiw05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw05020/obiw05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw06010/obiw06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw06010/obiw06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw06020/obiw06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw06020/obiw06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw07010/obiw07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw07010/obiw07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw07020/obiw07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw07020/obiw07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw08010/obiw08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw08010/obiw08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw08020/obiw08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw08020/obiw08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw11010/obiw11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw11010/obiw11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw11020/obiw11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw11020/obiw11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw11030/obiw11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw11030/obiw11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw12010/obiw12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw12010/obiw12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw12020/obiw12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw12020/obiw12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw12030/obiw12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw12030/obiw12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw13010/obiw13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw13010/obiw13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw13020/obiw13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw13020/obiw13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw13030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw13030/obiw13030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw13030/obiw13030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw13030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw14010/obiw14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw14010/obiw14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw14020/obiw14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw14020/obiw14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw14030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw14030/obiw14030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw14030/obiw14030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw14030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw15010/obiw15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw15010/obiw15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw15020/obiw15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw15020/obiw15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw15030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw15030/obiw15030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw15030/obiw15030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw15030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw16010/obiw16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw16010/obiw16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw16020/obiw16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw16020/obiw16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw16030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw16030/obiw16030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw16030/obiw16030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw16030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw17010/obiw17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw17010/obiw17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw17020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw17020/obiw17020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw17020/obiw17020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw17020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw17030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw17030/obiw17030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw17030/obiw17030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw17030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw18010/obiw18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw18010/obiw18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw18020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw18020/obiw18020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw18020/obiw18020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw18020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw18030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw18030/obiw18030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw18030/obiw18030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw18030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw21010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw21010/obiw21010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw21010/obiw21010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw21010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw21020/obiw21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw21020/obiw21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw22010/obiw22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw22010/obiw22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw22020/obiw22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw22020/obiw22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw23010/obiw23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw23010/obiw23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw23020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw23020/obiw23020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw23020/obiw23020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw23020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw23030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw23030/obiw23030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw23030/obiw23030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw23030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw24010/obiw24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw24010/obiw24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw24020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw24020/obiw24020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw24020/obiw24020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw24020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw25010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw25010/obiw25010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw25010/obiw25010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw25010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw25020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw25020/obiw25020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw25020/obiw25020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw25020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw26010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw26010/obiw26010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw26010/obiw26010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw26010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw26020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw26020/obiw26020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw26020/obiw26020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw26020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw27010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw27010/obiw27010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw27010/obiw27010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw27010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw27020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw27020/obiw27020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw27020/obiw27020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw27020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw27030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw27030/obiw27030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw27030/obiw27030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw27030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw28010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw28010/obiw28010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw28010/obiw28010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw28010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw28020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw28020/obiw28020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw28020/obiw28020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw28020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw31010/obiw31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw31010/obiw31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw31020/obiw31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw31020/obiw31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw32010/obiw32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw32010/obiw32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw32020/obiw32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw32020/obiw32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw33010/obiw33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw33010/obiw33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw33020/obiw33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw33020/obiw33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw34010/obiw34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw34010/obiw34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw34020/obiw34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw34020/obiw34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw35010/obiw35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw35010/obiw35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw35020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw35020/obiw35020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw35020/obiw35020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw35020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw36010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw36010/obiw36010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw36010/obiw36010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw36010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw36020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw36020/obiw36020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw36020/obiw36020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw36020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw37010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw37010/obiw37010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw37010/obiw37010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw37010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw37020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw37020/obiw37020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw37020/obiw37020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw37020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw38010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw38010/obiw38010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw38010/obiw38010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw38010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw38020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw38020/obiw38020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw38020/obiw38020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw38020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw41010/obiw41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw41010/obiw41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw41020/obiw41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw41020/obiw41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw41030/obiw41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw41030/obiw41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw42010/obiw42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw42010/obiw42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw42020/obiw42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw42020/obiw42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw42030/obiw42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw42030/obiw42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw43010/obiw43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw43010/obiw43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw43020/obiw43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw43020/obiw43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw43030/obiw43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw43030/obiw43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw44010/obiw44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw44010/obiw44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw44020/obiw44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw44020/obiw44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw44030/obiw44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw44030/obiw44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw45010/obiw45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw45010/obiw45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw45020/obiw45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw45020/obiw45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw45030/obiw45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw45030/obiw45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw46010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw46010/obiw46010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw46010/obiw46010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw46010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw46020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw46020/obiw46020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw46020/obiw46020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw46020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw46030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw46030/obiw46030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw46030/obiw46030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw46030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw47010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw47010/obiw47010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw47010/obiw47010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw47010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw47020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw47020/obiw47020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw47020/obiw47020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw47020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw47030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw47030/obiw47030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw47030/obiw47030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw47030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw48010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw48010/obiw48010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw48010/obiw48010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw48010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw48020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw48020/obiw48020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw48020/obiw48020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw48020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw48030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw48030/obiw48030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw48030/obiw48030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw48030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw51010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw51010/obiw51010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw51010/obiw51010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw51010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw51020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw51020/obiw51020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw51020/obiw51020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw51020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw52010/obiw52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw52010/obiw52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw52020/obiw52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw52020/obiw52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw53010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw53010/obiw53010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw53010/obiw53010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw53010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw53020/obiw53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw53020/obiw53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw54010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw54010/obiw54010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw54010/obiw54010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw54010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw54020/obiw54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw54020/obiw54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw55010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw55010/obiw55010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw55010/obiw55010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw55010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw55020/obiw55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw55020/obiw55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw56010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw56010/obiw56010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw56010/obiw56010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw56010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw56020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw56020/obiw56020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw56020/obiw56020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw56020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw57010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw57010/obiw57010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw57010/obiw57010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw57010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw57020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw57020/obiw57020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw57020/obiw57020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw57020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw58010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw58010/obiw58010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw58010/obiw58010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw58010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw58020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw58020/obiw58020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw58020/obiw58020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw58020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw61010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw61010/obiw61010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw61010/obiw61010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw61010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw61020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw61020/obiw61020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw61020/obiw61020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw61020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw62010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw62010/obiw62010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw62010/obiw62010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw62010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw62020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw62020/obiw62020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw62020/obiw62020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw62020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw63010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw63010/obiw63010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw63010/obiw63010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw63010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw63020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw63020/obiw63020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw63020/obiw63020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw63020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw64010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw64010/obiw64010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw64010/obiw64010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw64010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw64020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw64020/obiw64020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw64020/obiw64020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw64020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw65010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw65010/obiw65010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw65010/obiw65010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw65010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw65020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw65020/obiw65020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw65020/obiw65020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw65020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw66010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw66010/obiw66010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw66010/obiw66010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw66010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw66020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw66020/obiw66020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw66020/obiw66020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw66020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw67010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw67010/obiw67010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw67010/obiw67010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw67010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw67020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw67020/obiw67020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw67020/obiw67020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw67020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw68010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw68010/obiw68010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw68010/obiw68010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw68010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw68020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw68020/obiw68020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw68020/obiw68020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw68020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw71010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw71010/obiw71010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw71010/obiw71010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw71010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw71020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw71020/obiw71020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw71020/obiw71020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw71020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw72010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw72010/obiw72010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw72010/obiw72010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw72010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw72020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw72020/obiw72020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw72020/obiw72020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw72020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw73010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw73010/obiw73010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw73010/obiw73010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw73010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw73020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw73020/obiw73020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw73020/obiw73020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw73020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw74010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw74010/obiw74010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw74010/obiw74010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw74010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw74020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw74020/obiw74020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw74020/obiw74020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw74020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw75010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw75010/obiw75010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw75010/obiw75010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw75010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw75020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw75020/obiw75020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw75020/obiw75020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw75020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw76010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw76010/obiw76010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw76010/obiw76010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw76010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw76020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw76020/obiw76020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw76020/obiw76020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw76020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw77010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw77010/obiw77010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw77010/obiw77010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw77010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw77020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw77020/obiw77020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw77020/obiw77020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw77020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw78010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw78010/obiw78010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw78010/obiw78010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw78010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw78020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw78020/obiw78020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw78020/obiw78020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw78020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw81010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw81010/obiw81010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw81010/obiw81010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw81010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw81020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw81020/obiw81020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw81020/obiw81020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw81020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw81030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw81030/obiw81030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw81030/obiw81030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw81030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw82010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw82010/obiw82010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw82010/obiw82010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw82010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw82020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw82020/obiw82020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw82020/obiw82020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw82020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw82030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw82030/obiw82030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw82030/obiw82030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw82030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw83010/obiw83010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw83010/obiw83010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw83010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw83020/obiw83020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw83020/obiw83020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw83020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw84010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw84010/obiw84010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw84010/obiw84010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw84010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw84020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw84020/obiw84020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw84020/obiw84020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw84020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw84030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw84030/obiw84030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw84030/obiw84030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw84030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw85010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw85010/obiw85010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw85010/obiw85010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw85010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw85020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw85020/obiw85020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw85020/obiw85020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw85020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw85030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw85030/obiw85030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw85030/obiw85030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw85030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw86010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw86010/obiw86010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw86010/obiw86010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw86010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw86020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw86020/obiw86020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw86020/obiw86020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw86020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw86030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw86030/obiw86030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw86030/obiw86030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw86030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw87010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw87010/obiw87010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw87010/obiw87010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw87010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw87020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw87020/obiw87020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw87020/obiw87020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw87020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw87030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw87030/obiw87030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw87030/obiw87030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw87030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw88010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw88010/obiw88010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw88010/obiw88010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw88010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw88020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw88020/obiw88020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw88020/obiw88020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw88020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw88030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw88030/obiw88030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw88030/obiw88030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw88030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw91010/obiw91010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw91010/obiw91010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw91010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw91020/obiw91020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw91020/obiw91020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw91020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw92010/obiw92010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw92010/obiw92010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw92010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw92020/obiw92020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw92020/obiw92020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw92020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw93010/obiw93010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw93010/obiw93010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw93010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw93020/obiw93020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw93020/obiw93020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw93020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw94010/obiw94010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw94010/obiw94010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw94010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw94020/obiw94020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw94020/obiw94020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw94020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw95010/obiw95010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw95010/obiw95010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw95010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw95020/obiw95020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw95020/obiw95020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw95020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw96010/obiw96010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw96010/obiw96010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw96010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw96020/obiw96020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw96020/obiw96020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw96020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw97010/obiw97010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw97010/obiw97010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw97010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw97020/obiw97020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw97020/obiw97020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw97020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw98010/obiw98010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw98010/obiw98010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw98010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiw98020/obiw98020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiw98020/obiw98020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiw98020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa1010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa1010/obiwa1010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa1010/obiwa1010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa1010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa2010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa2010/obiwa2010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa2010/obiwa2010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa2010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa3010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa3010/obiwa3010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa3010/obiwa3010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa3010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa3020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa3020/obiwa3020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa3020/obiwa3020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa3020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa4010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa4010/obiwa4010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa4010/obiwa4010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa4010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa5010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa5010/obiwa5010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa5010/obiwa5010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa5010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa6010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa6010/obiwa6010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa6010/obiwa6010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa6010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa7010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa7010/obiwa7010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa7010/obiwa7010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa7010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa7020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa7020/obiwa7020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa7020/obiwa7020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa7020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwa8010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwa8010/obiwa8010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwa8010/obiwa8010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwa8010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb5010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb5010/obiwb5010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb5010/obiwb5010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb5010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb5020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb5020/obiwb5020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb5020/obiwb5020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb5020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb6010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb6010/obiwb6010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb6010/obiwb6010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb6010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb6020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obiwb6020/obiwb6020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obiwb6020/obiwb6020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/obiwb6020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08030/oe1l08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08030/oe1l08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08040/oe1l08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08040/oe1l08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08050/oe1l08050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08050/oe1l08050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08060/oe1l08060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08060/oe1l08060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08070/oe1l08070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08070/oe1l08070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08080/oe1l08080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08080/oe1l08080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08090/oe1l08090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08090/oe1l08090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55010/oe1l55010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55010/oe1l55010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55020/oe1l55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55020/oe1l55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55030/oe1l55030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55030/oe1l55030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55040/oe1l55040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55040/oe1l55040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55050/oe1l55050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55050/oe1l55050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55060/oe1l55060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55060/oe1l55060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55070/oe1l55070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55070/oe1l55070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55080/oe1l55080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55080/oe1l55080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l55090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l55090/oe1l55090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l55090/oe1l55090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l55090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56010/oe1l56010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56010/oe1l56010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56020/oe1l56020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56020/oe1l56020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56030/oe1l56030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56030/oe1l56030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56040/oe1l56040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56040/oe1l56040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56050/oe1l56050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56050/oe1l56050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56060/oe1l56060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56060/oe1l56060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56070/oe1l56070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56070/oe1l56070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56080/oe1l56080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56080/oe1l56080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l56090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l56090/oe1l56090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l56090/oe1l56090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l56090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57010/oe1l57010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57010/oe1l57010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57020/oe1l57020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57020/oe1l57020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57030/oe1l57030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57030/oe1l57030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57040/oe1l57040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57040/oe1l57040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57050/oe1l57050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57050/oe1l57050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57060/oe1l57060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57060/oe1l57060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57070/oe1l57070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57070/oe1l57070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57080/oe1l57080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57080/oe1l57080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l57090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l57090/oe1l57090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l57090/oe1l57090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l57090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58010/oe1l58010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58010/oe1l58010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58020/oe1l58020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58020/oe1l58020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58030/oe1l58030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58030/oe1l58030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58040/oe1l58040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58040/oe1l58040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58050/oe1l58050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58050/oe1l58050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58060/oe1l58060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58060/oe1l58060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58070/oe1l58070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58070/oe1l58070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58080/oe1l58080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58080/oe1l58080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l58090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l58090/oe1l58090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l58090/oe1l58090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l58090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c01010/oe3c01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c01010/oe3c01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c02010/oe3c02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c02010/oe3c02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c03010/oe3c03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c03010/oe3c03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c04010/oe3c04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c04010/oe3c04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c05010/oe3c05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c05010/oe3c05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c06010/oe3c06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c06010/oe3c06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3c07010/oe3c07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3c07010/oe3c07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3c07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m01010/oe3m01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m01010/oe3m01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m01020/oe3m01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m01020/oe3m01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m02010/oe3m02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m02010/oe3m02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m02020/oe3m02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m02020/oe3m02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m03010/oe3m03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m03010/oe3m03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m03020/oe3m03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m03020/oe3m03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m04010/oe3m04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m04010/oe3m04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe3m04020/oe3m04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe3m04020/oe3m04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe3m04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg01010/oebg01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg01010/oebg01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg01020/oebg01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg01020/oebg01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg02010/oebg02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg02010/oebg02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg02020/oebg02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg02020/oebg02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg03010/oebg03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg03010/oebg03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg03020/oebg03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg03020/oebg03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg04010/oebg04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg04010/oebg04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebg04020/oebg04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebg04020/oebg04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebg04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx01010/oebx01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx01010/oebx01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebx01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02010/oebx02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02010/oebx02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebx02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx02020/oebx02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx02020/oebx02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebx02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03010/oebx03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03010/oebx03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebx03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oebx03020/oebx03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oebx03020/oebx03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oebx03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf01010/oenf01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf01010/oenf01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf01020/oenf01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf01020/oenf01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf02010/oenf02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf02010/oenf02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf02020/oenf02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf02020/oenf02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf03010/oenf03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf03010/oenf03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oenf03020/oenf03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oenf03020/oenf03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oenf03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo101020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo101020/oeo101020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo101020/oeo101020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo101020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo102020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo102020/oeo102020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo102020/oeo102020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo102020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo103ctq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo103ctq/oeo103ctq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo103ctq/oeo103ctq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo103ctq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo103cuq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo103cuq/oeo103cuq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo103cuq/oeo103cuq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo103cuq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo103cvq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo103cvq/oeo103cvq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo103cvq/oeo103cvq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo103cvq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo104020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo104020/oeo104020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo104020/oeo104020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo104020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo105020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo105020/oeo105020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo105020/oeo105020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo105020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo106020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo106020/oeo106020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo106020/oeo106020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo106020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo107040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo107040/oeo107040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo107040/oeo107040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo107040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo107050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo107050/oeo107050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo107050/oeo107050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo107050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo107060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo107060/oeo107060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo107060/oeo107060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo107060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oeo108020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oeo108020/oeo108020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oeo108020/oeo108020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oeo108020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv05010/odlv05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv05010/odlv05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv05020/odlv05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv05020/odlv05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv11010/odlv11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv11010/odlv11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odlv11020/odlv11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odlv11020/odlv11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odlv11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq01010/odrq01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq01010/odrq01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq01020/odrq01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq01020/odrq01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq01030/odrq01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq01030/odrq01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq02010/odrq02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq02010/odrq02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq02020/odrq02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq02020/odrq02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq02030/odrq02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq02030/odrq02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03010/odrq03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03010/odrq03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03020/odrq03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03020/odrq03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03030/odrq03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03030/odrq03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq03040/odrq03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq03040/odrq03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq04010/odrq04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq04010/odrq04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq04020/odrq04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq04020/odrq04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq04030/odrq04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq04030/odrq04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq05010/odrq05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq05010/odrq05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq05020/odrq05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq05020/odrq05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq05030/odrq05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq05030/odrq05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq06010/odrq06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq06010/odrq06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq06020/odrq06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq06020/odrq06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq06030/odrq06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq06030/odrq06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07010/odrq07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07010/odrq07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07020/odrq07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07020/odrq07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07030/odrq07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07030/odrq07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq07040/odrq07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq07040/odrq07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq08010/odrq08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq08010/odrq08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq08020/odrq08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq08020/odrq08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odrq08030/odrq08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odrq08030/odrq08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odrq08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy37020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy37020/odxy37020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy37020/odxy37020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odxy37020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy38020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy38020/odxy38020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy38020/odxy38020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odxy38020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy38030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy38030/odxy38030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy38030/odxy38030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odxy38030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy39020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy39020/odxy39020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy39020/odxy39020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odxy39020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odxy40020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odxy40020/odxy40020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odxy40020/odxy40020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/odxy40020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01010/oe1l01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01010/oe1l01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01020/oe1l01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01020/oe1l01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01030/oe1l01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01030/oe1l01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01040/oe1l01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01040/oe1l01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01050/oe1l01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01050/oe1l01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01060/oe1l01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01060/oe1l01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01070/oe1l01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01070/oe1l01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01080/oe1l01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01080/oe1l01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l01090/oe1l01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l01090/oe1l01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02010/oe1l02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02010/oe1l02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02020/oe1l02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02020/oe1l02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02030/oe1l02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02030/oe1l02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02040/oe1l02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02040/oe1l02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02050/oe1l02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02050/oe1l02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02060/oe1l02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02060/oe1l02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02070/oe1l02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02070/oe1l02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02080/oe1l02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02080/oe1l02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l02090/oe1l02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l02090/oe1l02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03010/oe1l03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03010/oe1l03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03020/oe1l03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03020/oe1l03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03030/oe1l03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03030/oe1l03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03040/oe1l03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03040/oe1l03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03050/oe1l03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03050/oe1l03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03060/oe1l03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03060/oe1l03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03070/oe1l03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03070/oe1l03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03080/oe1l03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03080/oe1l03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l03090/oe1l03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l03090/oe1l03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04010/oe1l04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04010/oe1l04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04020/oe1l04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04020/oe1l04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04030/oe1l04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04030/oe1l04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04040/oe1l04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04040/oe1l04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04050/oe1l04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04050/oe1l04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04060/oe1l04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04060/oe1l04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04070/oe1l04070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04070/oe1l04070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04080/oe1l04080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04080/oe1l04080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l04090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l04090/oe1l04090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l04090/oe1l04090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l04090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05010/oe1l05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05010/oe1l05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05020/oe1l05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05020/oe1l05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05030/oe1l05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05030/oe1l05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05040/oe1l05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05040/oe1l05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05050/oe1l05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05050/oe1l05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05060/oe1l05060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05060/oe1l05060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05070/oe1l05070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05070/oe1l05070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05080/oe1l05080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05080/oe1l05080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l05090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l05090/oe1l05090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l05090/oe1l05090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l05090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06010/oe1l06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06010/oe1l06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06020/oe1l06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06020/oe1l06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06030/oe1l06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06030/oe1l06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06040/oe1l06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06040/oe1l06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06050/oe1l06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06050/oe1l06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06060/oe1l06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06060/oe1l06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06070/oe1l06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06070/oe1l06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06080/oe1l06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06080/oe1l06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l06090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l06090/oe1l06090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l06090/oe1l06090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l06090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07010/oe1l07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07010/oe1l07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07020/oe1l07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07020/oe1l07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07030/oe1l07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07030/oe1l07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07040/oe1l07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07040/oe1l07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07050/oe1l07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07050/oe1l07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07060/oe1l07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07060/oe1l07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07070/oe1l07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07070/oe1l07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07080/oe1l07080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07080/oe1l07080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l07090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l07090/oe1l07090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l07090/oe1l07090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l07090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08010/oe1l08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08010/oe1l08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1l08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1l08020/oe1l08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1l08020/oe1l08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1644.sh&uri=mast:HST/product/oe1l08020_flt.fits'




exit 0
