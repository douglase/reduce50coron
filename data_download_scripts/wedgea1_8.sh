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
FOLDER=MAST_2023-01-20T1645
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
        <title>MAST_2023-01-20T1645</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1645</h2>
        <h3>Total Files: 125</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o40601010_flt.fits</td>
                <td>HST/o40601010/o40601010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o40601020_flt.fits</td>
                <td>HST/o40601020/o40601020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01010_flt.fits</td>
                <td>HST/o43f01010/o43f01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01020_flt.fits</td>
                <td>HST/o43f01020/o43f01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01030_flt.fits</td>
                <td>HST/o43f01030/o43f01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g8010b0_flt.fits</td>
                <td>HST/o4g8010b0/o4g8010b0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq01030_flt.fits</td>
                <td>HST/o5dq01030/o5dq01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq01040_flt.fits</td>
                <td>HST/o5dq01040/o5dq01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq02030_flt.fits</td>
                <td>HST/o5dq02030/o5dq02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq02040_flt.fits</td>
                <td>HST/o5dq02040/o5dq02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq03030_flt.fits</td>
                <td>HST/o5dq03030/o5dq03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq03040_flt.fits</td>
                <td>HST/o5dq03040/o5dq03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq04030_flt.fits</td>
                <td>HST/o5dq04030/o5dq04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq04040_flt.fits</td>
                <td>HST/o5dq04040/o5dq04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020l0_flt.fits</td>
                <td>HST/o5ik020l0/o5ik020l0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020m0_flt.fits</td>
                <td>HST/o5ik020m0/o5ik020m0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020n0_flt.fits</td>
                <td>HST/o5ik020n0/o5ik020n0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020o0_flt.fits</td>
                <td>HST/o5ik020o0/o5ik020o0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020p0_flt.fits</td>
                <td>HST/o5ik020p0/o5ik020p0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020q0_flt.fits</td>
                <td>HST/o5ik020q0/o5ik020q0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik020r0_flt.fits</td>
                <td>HST/o5ik020r0/o5ik020r0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03010_flt.fits</td>
                <td>HST/o5ik03010/o5ik03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03020_flt.fits</td>
                <td>HST/o5ik03020/o5ik03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03030_flt.fits</td>
                <td>HST/o5ik03030/o5ik03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03040_flt.fits</td>
                <td>HST/o5ik03040/o5ik03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03050_flt.fits</td>
                <td>HST/o5ik03050/o5ik03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik03060_flt.fits</td>
                <td>HST/o5ik03060/o5ik03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04010_flt.fits</td>
                <td>HST/o5ik04010/o5ik04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04020_flt.fits</td>
                <td>HST/o5ik04020/o5ik04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04030_flt.fits</td>
                <td>HST/o5ik04030/o5ik04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04040_flt.fits</td>
                <td>HST/o5ik04040/o5ik04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04050_flt.fits</td>
                <td>HST/o5ik04050/o5ik04050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik04060_flt.fits</td>
                <td>HST/o5ik04060/o5ik04060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05010_flt.fits</td>
                <td>HST/o5ik05010/o5ik05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05020_flt.fits</td>
                <td>HST/o5ik05020/o5ik05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05030_flt.fits</td>
                <td>HST/o5ik05030/o5ik05030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05040_flt.fits</td>
                <td>HST/o5ik05040/o5ik05040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05050_flt.fits</td>
                <td>HST/o5ik05050/o5ik05050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik05060_flt.fits</td>
                <td>HST/o5ik05060/o5ik05060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520l0_flt.fits</td>
                <td>HST/o5ik520l0/o5ik520l0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520m0_flt.fits</td>
                <td>HST/o5ik520m0/o5ik520m0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520n0_flt.fits</td>
                <td>HST/o5ik520n0/o5ik520n0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520o0_flt.fits</td>
                <td>HST/o5ik520o0/o5ik520o0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520p0_flt.fits</td>
                <td>HST/o5ik520p0/o5ik520p0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520q0_flt.fits</td>
                <td>HST/o5ik520q0/o5ik520q0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5ik520r0_flt.fits</td>
                <td>HST/o5ik520r0/o5ik520r0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o61u01010_flt.fits</td>
                <td>HST/o61u01010/o61u01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o68m030h0_flt.fits</td>
                <td>HST/o68m030h0/o68m030h0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o68m030j0_flt.fits</td>
                <td>HST/o68m030j0/o68m030j0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o68m030l0_flt.fits</td>
                <td>HST/o68m030l0/o68m030l0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o69c03020_flt.fits</td>
                <td>HST/o69c03020/o69c03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o69c03040_flt.fits</td>
                <td>HST/o69c03040/o69c03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6h201010_flt.fits</td>
                <td>HST/o6h201010/o6h201010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6i401010_flt.fits</td>
                <td>HST/o6i401010/o6i401010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6i401020_flt.fits</td>
                <td>HST/o6i401020/o6i401020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6i401030_flt.fits</td>
                <td>HST/o6i401030/o6i401030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6i402030_flt.fits</td>
                <td>HST/o6i402030/o6i402030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6i402040_flt.fits</td>
                <td>HST/o6i402040/o6i402040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j601010_flt.fits</td>
                <td>HST/o6j601010/o6j601010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j601020_flt.fits</td>
                <td>HST/o6j601020/o6j601020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j602010_flt.fits</td>
                <td>HST/o6j602010/o6j602010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j602020_flt.fits</td>
                <td>HST/o6j602020/o6j602020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j603010_flt.fits</td>
                <td>HST/o6j603010/o6j603010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs01010_flt.fits</td>
                <td>HST/obhs01010/obhs01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs02010_flt.fits</td>
                <td>HST/obhs02010/obhs02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs03010_flt.fits</td>
                <td>HST/obhs03010/obhs03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs04010_flt.fits</td>
                <td>HST/obhs04010/obhs04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs05010_flt.fits</td>
                <td>HST/obhs05010/obhs05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs06010_flt.fits</td>
                <td>HST/obhs06010/obhs06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs07010_flt.fits</td>
                <td>HST/obhs07010/obhs07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs08010_flt.fits</td>
                <td>HST/obhs08010/obhs08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs09010_flt.fits</td>
                <td>HST/obhs09010/obhs09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs10010_flt.fits</td>
                <td>HST/obhs10010/obhs10010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs11010_flt.fits</td>
                <td>HST/obhs11010/obhs11010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs12010_flt.fits</td>
                <td>HST/obhs12010/obhs12010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs13010_flt.fits</td>
                <td>HST/obhs13010/obhs13010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs14010_flt.fits</td>
                <td>HST/obhs14010/obhs14010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs15010_flt.fits</td>
                <td>HST/obhs15010/obhs15010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs16010_flt.fits</td>
                <td>HST/obhs16010/obhs16010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs17010_flt.fits</td>
                <td>HST/obhs17010/obhs17010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs18010_flt.fits</td>
                <td>HST/obhs18010/obhs18010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs19010_flt.fits</td>
                <td>HST/obhs19010/obhs19010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/obhs20010_flt.fits</td>
                <td>HST/obhs20010/obhs20010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f01010_flt.fits</td>
                <td>HST/oc8f01010/oc8f01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f02010_flt.fits</td>
                <td>HST/oc8f02010/oc8f02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f03010_flt.fits</td>
                <td>HST/oc8f03010/oc8f03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f04010_flt.fits</td>
                <td>HST/oc8f04010/oc8f04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f05010_flt.fits</td>
                <td>HST/oc8f05010/oc8f05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f06010_flt.fits</td>
                <td>HST/oc8f06010/oc8f06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f07010_flt.fits</td>
                <td>HST/oc8f07010/oc8f07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f08010_flt.fits</td>
                <td>HST/oc8f08010/oc8f08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oc8f09010_flt.fits</td>
                <td>HST/oc8f09010/oc8f09010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9101010_flt.fits</td>
                <td>HST/od9101010/od9101010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/odhw01010_flt.fits</td>
                <td>HST/odhw01010/odhw01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oduu01010_flt.fits</td>
                <td>HST/oduu01010/oduu01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k01010_flt.fits</td>
                <td>HST/oe1k01010/oe1k01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k01020_flt.fits</td>
                <td>HST/oe1k01020/oe1k01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k01030_flt.fits</td>
                <td>HST/oe1k01030/oe1k01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k02010_flt.fits</td>
                <td>HST/oe1k02010/oe1k02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k02020_flt.fits</td>
                <td>HST/oe1k02020/oe1k02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k02030_flt.fits</td>
                <td>HST/oe1k02030/oe1k02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k03010_flt.fits</td>
                <td>HST/oe1k03010/oe1k03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k03020_flt.fits</td>
                <td>HST/oe1k03020/oe1k03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k03030_flt.fits</td>
                <td>HST/oe1k03030/oe1k03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k04010_flt.fits</td>
                <td>HST/oe1k04010/oe1k04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k04020_flt.fits</td>
                <td>HST/oe1k04020/oe1k04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k04030_flt.fits</td>
                <td>HST/oe1k04030/oe1k04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed801010_flt.fits</td>
                <td>HST/oed801010/oed801010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed802010_flt.fits</td>
                <td>HST/oed802010/oed802010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed803010_flt.fits</td>
                <td>HST/oed803010/oed803010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed803020_flt.fits</td>
                <td>HST/oed803020/oed803020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed804010_flt.fits</td>
                <td>HST/oed804010/oed804010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed805010_flt.fits</td>
                <td>HST/oed805010/oed805010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed806010_flt.fits</td>
                <td>HST/oed806010/oed806010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed807010_flt.fits</td>
                <td>HST/oed807010/oed807010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed808010_flt.fits</td>
                <td>HST/oed808010/oed808010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed808020_flt.fits</td>
                <td>HST/oed808020/oed808020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed809010_flt.fits</td>
                <td>HST/oed809010/oed809010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed810010_flt.fits</td>
                <td>HST/oed810010/oed810010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed811010_flt.fits</td>
                <td>HST/oed811010/oed811010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed812010_flt.fits</td>
                <td>HST/oed812010/oed812010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed813010_flt.fits</td>
                <td>HST/oed813010/oed813010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed813020_flt.fits</td>
                <td>HST/oed813020/oed813020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed814010_flt.fits</td>
                <td>HST/oed814010/oed814010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oed815010_flt.fits</td>
                <td>HST/oed815010/oed815010_flt.fits</td>
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
<<< Downloading File: mast:HST/product/oe1k02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k02030/oe1k02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k02030/oe1k02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k03010/oe1k03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k03010/oe1k03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k03020/oe1k03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k03020/oe1k03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k03030/oe1k03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k03030/oe1k03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k04010/oe1k04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k04010/oe1k04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k04020/oe1k04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k04020/oe1k04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k04030/oe1k04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k04030/oe1k04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed801010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed801010/oed801010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed801010/oed801010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed801010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed802010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed802010/oed802010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed802010/oed802010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed802010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed803010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed803010/oed803010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed803010/oed803010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed803010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed803020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed803020/oed803020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed803020/oed803020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed803020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed804010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed804010/oed804010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed804010/oed804010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed804010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed805010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed805010/oed805010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed805010/oed805010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed805010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed806010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed806010/oed806010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed806010/oed806010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed806010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed807010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed807010/oed807010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed807010/oed807010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed807010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed808010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed808010/oed808010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed808010/oed808010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed808010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed808020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed808020/oed808020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed808020/oed808020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed808020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed809010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed809010/oed809010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed809010/oed809010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed809010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed810010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed810010/oed810010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed810010/oed810010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed810010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed811010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed811010/oed811010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed811010/oed811010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed811010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed812010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed812010/oed812010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed812010/oed812010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed812010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed813010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed813010/oed813010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed813010/oed813010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed813010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed813020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed813020/oed813020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed813020/oed813020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed813020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed814010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed814010/oed814010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed814010/oed814010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed814010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oed815010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oed815010/oed815010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oed815010/oed815010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oed815010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40601010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40601010/o40601010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40601010/o40601010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o40601010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40601020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40601020/o40601020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40601020/o40601020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o40601020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01010/o43f01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01010/o43f01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o43f01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01020/o43f01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01020/o43f01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o43f01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01030/o43f01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01030/o43f01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o43f01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4g8010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g8010b0/o4g8010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g8010b0/o4g8010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o4g8010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq01030/o5dq01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq01030/o5dq01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq01040/o5dq01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq01040/o5dq01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq02030/o5dq02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq02030/o5dq02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq02040/o5dq02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq02040/o5dq02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq03030/o5dq03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq03030/o5dq03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq03040/o5dq03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq03040/o5dq03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq04030/o5dq04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq04030/o5dq04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq04040/o5dq04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq04040/o5dq04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5dq04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020l0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020l0/o5ik020l0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020l0/o5ik020l0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020l0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020m0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020m0/o5ik020m0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020m0/o5ik020m0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020m0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020n0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020n0/o5ik020n0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020n0/o5ik020n0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020n0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020o0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020o0/o5ik020o0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020o0/o5ik020o0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020o0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020p0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020p0/o5ik020p0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020p0/o5ik020p0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020p0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020q0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020q0/o5ik020q0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020q0/o5ik020q0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020q0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020r0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik020r0/o5ik020r0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik020r0/o5ik020r0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik020r0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03010/o5ik03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03010/o5ik03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03020/o5ik03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03020/o5ik03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03030/o5ik03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03030/o5ik03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03040/o5ik03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03040/o5ik03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03050/o5ik03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03050/o5ik03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik03060/o5ik03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik03060/o5ik03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04010/o5ik04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04010/o5ik04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04020/o5ik04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04020/o5ik04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04030/o5ik04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04030/o5ik04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04040/o5ik04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04040/o5ik04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04050/o5ik04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04050/o5ik04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik04060/o5ik04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik04060/o5ik04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik04060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05010/o5ik05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05010/o5ik05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05020/o5ik05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05020/o5ik05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05030/o5ik05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05030/o5ik05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05040/o5ik05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05040/o5ik05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05050/o5ik05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05050/o5ik05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik05060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik05060/o5ik05060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik05060/o5ik05060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik05060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520l0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520l0/o5ik520l0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520l0/o5ik520l0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520l0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520m0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520m0/o5ik520m0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520m0/o5ik520m0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520m0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520n0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520n0/o5ik520n0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520n0/o5ik520n0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520n0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520o0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520o0/o5ik520o0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520o0/o5ik520o0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520o0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520p0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520p0/o5ik520p0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520p0/o5ik520p0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520p0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520q0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520q0/o5ik520q0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520q0/o5ik520q0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520q0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520r0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5ik520r0/o5ik520r0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5ik520r0/o5ik520r0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o5ik520r0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o61u01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o61u01010/o61u01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o61u01010/o61u01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o61u01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030h0/o68m030h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030h0/o68m030h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o68m030h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030j0/o68m030j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030j0/o68m030j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o68m030j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030l0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030l0/o68m030l0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030l0/o68m030l0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o68m030l0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o69c03020/o69c03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o69c03020/o69c03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o69c03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o69c03040/o69c03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o69c03040/o69c03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o69c03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6h201010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6h201010/o6h201010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6h201010/o6h201010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6h201010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401010/o6i401010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401010/o6i401010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6i401010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401020/o6i401020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401020/o6i401020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6i401020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i401030/o6i401030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i401030/o6i401030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6i401030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i402030/o6i402030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i402030/o6i402030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6i402030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6i402040/o6i402040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6i402040/o6i402040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6i402040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j601010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j601010/o6j601010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j601010/o6j601010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6j601010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j601020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j601020/o6j601020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j601020/o6j601020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6j601020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j602010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j602010/o6j602010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j602010/o6j602010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6j602010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j602020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j602020/o6j602020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j602020/o6j602020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6j602020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j603010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j603010/o6j603010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j603010/o6j603010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/o6j603010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs01010/obhs01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs01010/obhs01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs02010/obhs02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs02010/obhs02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs03010/obhs03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs03010/obhs03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs04010/obhs04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs04010/obhs04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs05010/obhs05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs05010/obhs05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs06010/obhs06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs06010/obhs06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs07010/obhs07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs07010/obhs07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs08010/obhs08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs08010/obhs08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs09010/obhs09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs09010/obhs09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs10010/obhs10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs10010/obhs10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs11010/obhs11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs11010/obhs11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs12010/obhs12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs12010/obhs12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs13010/obhs13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs13010/obhs13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs14010/obhs14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs14010/obhs14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs15010/obhs15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs15010/obhs15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs16010/obhs16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs16010/obhs16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs17010/obhs17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs17010/obhs17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs18010/obhs18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs18010/obhs18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs19010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs19010/obhs19010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs19010/obhs19010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs19010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obhs20010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/obhs20010/obhs20010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/obhs20010/obhs20010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/obhs20010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f01010/oc8f01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f01010/oc8f01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f02010/oc8f02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f02010/oc8f02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f03010/oc8f03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f03010/oc8f03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f04010/oc8f04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f04010/oc8f04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f05010/oc8f05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f05010/oc8f05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f06010/oc8f06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f06010/oc8f06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f07010/oc8f07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f07010/oc8f07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f08010/oc8f08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f08010/oc8f08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc8f09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oc8f09010/oc8f09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oc8f09010/oc8f09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oc8f09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9101010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9101010/od9101010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9101010/od9101010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/od9101010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odhw01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/odhw01010/odhw01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/odhw01010/odhw01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/odhw01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oduu01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oduu01010/oduu01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oduu01010/oduu01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oduu01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k01010/oe1k01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k01010/oe1k01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k01020/oe1k01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k01020/oe1k01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k01030/oe1k01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k01030/oe1k01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k02010/oe1k02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k02010/oe1k02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k02020/oe1k02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k02020/oe1k02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1645.sh&uri=mast:HST/product/oe1k02020_flt.fits'




exit 0
