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
FOLDER=MAST_2023-01-20T1646
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
        <title>MAST_2023-01-20T1646</title>
    </head>
    <body>
        <h2>Manifest for File: MAST_2023-01-20T1646</h2>
        <h3>Total Files: 39</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v01010_flt.fits</td>
                <td>HST/o42v01010/o42v01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v02010_flt.fits</td>
                <td>HST/o42v02010/o42v02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o42v03010_flt.fits</td>
                <td>HST/o42v03010/o42v03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g8010a0_flt.fits</td>
                <td>HST/o4g8010a0/o4g8010a0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq01010_flt.fits</td>
                <td>HST/o5dq01010/o5dq01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq01020_flt.fits</td>
                <td>HST/o5dq01020/o5dq01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq02010_flt.fits</td>
                <td>HST/o5dq02010/o5dq02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq02020_flt.fits</td>
                <td>HST/o5dq02020/o5dq02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq03010_flt.fits</td>
                <td>HST/o5dq03010/o5dq03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq03020_flt.fits</td>
                <td>HST/o5dq03020/o5dq03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq04010_flt.fits</td>
                <td>HST/o5dq04010/o5dq04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq04020_flt.fits</td>
                <td>HST/o5dq04020/o5dq04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq05010_flt.fits</td>
                <td>HST/o5dq05010/o5dq05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o5dq06010_flt.fits</td>
                <td>HST/o5dq06010/o5dq06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6ic02010_flt.fits</td>
                <td>HST/o6ic02010/o6ic02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6ic02020_flt.fits</td>
                <td>HST/o6ic02020/o6ic02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j601030_flt.fits</td>
                <td>HST/o6j601030/o6j601030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j602030_flt.fits</td>
                <td>HST/o6j602030/o6j602030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o6j603030_flt.fits</td>
                <td>HST/o6j603030/o6j603030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j01010_flt.fits</td>
                <td>HST/ob1j01010/ob1j01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j01020_flt.fits</td>
                <td>HST/ob1j01020/ob1j01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j02010_flt.fits</td>
                <td>HST/ob1j02010/ob1j02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j02020_flt.fits</td>
                <td>HST/ob1j02020/ob1j02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j03010_flt.fits</td>
                <td>HST/ob1j03010/ob1j03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j03020_flt.fits</td>
                <td>HST/ob1j03020/ob1j03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j04010_flt.fits</td>
                <td>HST/ob1j04010/ob1j04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ob1j04020_flt.fits</td>
                <td>HST/ob1j04020/ob1j04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01020_flt.fits</td>
                <td>HST/ocbc01020/ocbc01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01040_flt.fits</td>
                <td>HST/ocbc01040/ocbc01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc01060_flt.fits</td>
                <td>HST/ocbc01060/ocbc01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02020_flt.fits</td>
                <td>HST/ocbc02020/ocbc02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02040_flt.fits</td>
                <td>HST/ocbc02040/ocbc02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc02060_flt.fits</td>
                <td>HST/ocbc02060/ocbc02060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03020_flt.fits</td>
                <td>HST/ocbc03020/ocbc03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03040_flt.fits</td>
                <td>HST/ocbc03040/ocbc03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc03060_flt.fits</td>
                <td>HST/ocbc03060/ocbc03060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04020_flt.fits</td>
                <td>HST/ocbc04020/ocbc04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04040_flt.fits</td>
                <td>HST/ocbc04040/ocbc04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocbc04060_flt.fits</td>
                <td>HST/ocbc04060/ocbc04060_flt.fits</td>
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
<<< Downloading File: mast:HST/product/o42v01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v01010/o42v01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v01010/o42v01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o42v01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v02010/o42v02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v02010/o42v02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o42v02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o42v03010/o42v03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o42v03010/o42v03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o42v03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4g8010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g8010a0/o4g8010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g8010a0/o4g8010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o4g8010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq01010/o5dq01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq01010/o5dq01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq01020/o5dq01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq01020/o5dq01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq02010/o5dq02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq02010/o5dq02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq02020/o5dq02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq02020/o5dq02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq03010/o5dq03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq03010/o5dq03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq03020/o5dq03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq03020/o5dq03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq04010/o5dq04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq04010/o5dq04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq04020/o5dq04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq04020/o5dq04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq05010/o5dq05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq05010/o5dq05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5dq06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o5dq06010/o5dq06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o5dq06010/o5dq06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o5dq06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6ic02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6ic02010/o6ic02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6ic02010/o6ic02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o6ic02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6ic02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6ic02020/o6ic02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6ic02020/o6ic02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o6ic02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j601030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j601030/o6j601030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j601030/o6j601030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o6j601030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j602030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j602030/o6j602030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j602030/o6j602030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o6j602030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6j603030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o6j603030/o6j603030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o6j603030/o6j603030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o6j603030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j01010/ob1j01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j01010/ob1j01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j01020/ob1j01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j01020/ob1j01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j02010/ob1j02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j02010/ob1j02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j02020/ob1j02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j02020/ob1j02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j03010/ob1j03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j03010/ob1j03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j03020/ob1j03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j03020/ob1j03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j04010/ob1j04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j04010/ob1j04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ob1j04020/ob1j04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ob1j04020/ob1j04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ob1j04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01020/ocbc01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01020/ocbc01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01040/ocbc01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01040/ocbc01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc01060/ocbc01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc01060/ocbc01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02020/ocbc02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02020/ocbc02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02040/ocbc02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02040/ocbc02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc02060/ocbc02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc02060/ocbc02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03020/ocbc03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03020/ocbc03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03040/ocbc03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03040/ocbc03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc03060/ocbc03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc03060/ocbc03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04020/ocbc04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04020/ocbc04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04040/ocbc04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04040/ocbc04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocbc04060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocbc04060/ocbc04060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocbc04060/ocbc04060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocbc04060_flt.fits'




exit 0
