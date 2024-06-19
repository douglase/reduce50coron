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
FOLDER=wedgea1_0
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


# Download Product Files:



cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik520k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik520k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik520k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik520k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq15020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq15020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq15020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq15020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq16010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq16010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq16010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq16010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq16020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq16020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq16020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq16020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq17010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq17010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq17010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq17010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5kq18010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5kq18010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5kq18010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5kq18010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w01rjq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w01rjq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w01rjq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w01rjq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w02ttq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w02ttq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w02ttq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w02ttq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w03090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w03090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w03090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w03090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w030a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w030a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w030b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w030b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w030c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w030c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w030c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w030c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w12030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w12030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64w12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64w12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64w12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64w12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa1010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa1010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa1020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa1020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa1030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa1030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa1040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa1040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa1040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa1040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa2010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa2010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa2020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa2020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa2030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa2030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o64wa2040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o64wa2040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o64wa2040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o64wa2040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65410010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o65410010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o65410010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65410010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65410020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o65410020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o65410020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65410020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65420010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o65420010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o65420010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65420010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0010w0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o3y0010w0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o3y0010w0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0010w0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0010y0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o3y0010y0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o3y0010y0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0010y0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020w0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o3y0020w0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o3y0020w0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0020w0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o3y0020y0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o3y0020y0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o3y0020y0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o3y0020y0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o40601040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o40601040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o40601040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o40601040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o42v03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o42v03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o42v03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o42v03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o43f01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o43f01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o43f01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4xn03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o4xn03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o4xn03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o4xn03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o57z02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o57z02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o57z02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o57z02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik01090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik01090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik01090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik01090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik010l0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik010l0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik010l0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik010l0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik02090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik02090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik02090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik02090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020e0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020e0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020e0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020e0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020h0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020h0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020h0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020h0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020j0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020j0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020j0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020j0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik020k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik020k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik020k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik020k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik06090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik06090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik06090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik06090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060a0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik060a0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik060a0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060a0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060b0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik060b0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik060b0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060b0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060c0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik060c0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik060c0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060c0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik060d0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik060d0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik060d0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik060d0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o5ik52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o5ik52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o5ik52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o5ik52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq07060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq07060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq07070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq07070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq07080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq07080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq08050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq08050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq08050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq08050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odte15010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odte15010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odte15010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odte15010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3c07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3c07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3c07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3c07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3m01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3m01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3m02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3m02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3m03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3m03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe3m04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oe3m04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oe3m04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oe3m04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebg01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebg01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebg02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebg02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebg03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebg03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebg04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebg04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebg04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebg04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebx03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebx03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebx03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebx03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz21020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz21020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz21020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz21020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz22020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz22020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz22020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz22020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz23020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz23020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz23020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz23020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz24020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz24020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz24020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz24020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz31020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz31020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz31020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz31020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz32020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz32020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz32020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz32020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz33020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz33020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz33020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz33020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz34020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz34020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz34020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz34020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz41020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz41020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz41020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz41020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oebz53020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oebz53020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oebz53020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oebz53020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec201020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec201020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec201020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec201020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec202020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec202020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec202020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec202020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec203040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec203040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec203050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec203050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec203060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec203060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec203060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec203060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec204020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec204020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec204020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec204020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec253040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec253040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec253050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec253050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec253060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec253060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec253060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec253060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oec254020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oec254020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oec254020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oec254020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oenf01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oenf01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oenf02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oenf02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oenf03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oenf03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oenf03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oenf03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh40030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh40030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh40030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh40030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh41030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh41030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh41030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh41030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc07040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc07040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc07040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc07040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc08040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc08040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc08040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc08040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc11050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc11050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc11050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc11050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc12050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc12050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc12050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc12050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc13050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc13050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc13050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc13050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc14050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc14050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc14050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc14050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc15050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc15050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc15050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc15050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc16050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc16050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc16050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc16050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc17040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc17040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc17040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc17050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc17050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc17050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc17050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc18040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc18040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc18040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc18050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc18050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc18050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc18050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc31040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc31040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc31040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc31040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc32040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc32040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc32040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc32040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc33040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc33040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc33040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc33040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc34040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc34040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc34040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc34040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc35040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc35040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc35040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc35040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc36040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc36040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc36040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc36040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc37040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc37040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc37040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc37040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc38040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc38040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc38040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc38040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc41050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc41050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc41050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc41050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc42050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc42050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc42050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc42050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc43050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc43050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc43050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc43050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc44050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc44050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc44050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc44050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc45050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc45050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc45050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc45050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc46050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc46050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc46050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc46050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc47050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc47050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc47050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc47050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc48040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc48040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc48040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc48050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc48050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc48050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc48050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc51020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc51020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc51020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc51020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc52020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc52020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc52020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc52020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc53040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc53040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc53040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc53040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc54020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc54020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc54020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc54020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc55020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc55020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc55020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc55020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc56020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc56020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc56020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc56020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc57030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc57030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc57030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc57030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocjc58020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ocjc58020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ocjc58020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ocjc58020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco301010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco301010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco301010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco301010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco302010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco302010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco302010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco302010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco303010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco303010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco303010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco303010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco304010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco304010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco304010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco304010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco601040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco601040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco601040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco601040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco602040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco602040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco602040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco602040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco603040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco603040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco603050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco603050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco603060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco603060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco603060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco603060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco604040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco604040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco604040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco604040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco605040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco605040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco605040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco605040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco606040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco606040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco606040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco606040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco607040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco607040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco607050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco607050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco607060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco607060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco607060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco607060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oco608040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oco608040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oco608040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oco608040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5401010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5401010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5401010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5401010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5403010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5403010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5403010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5403010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5403020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5403020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5403020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5403020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5404010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5404010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5404010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5404010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5405010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5405010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5405010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5405010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5411010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5411010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5411010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5411010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5412010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5412010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5412010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5412010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5413010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5413010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5413010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5413010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5413020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5413020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5413020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5413020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5414010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5414010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5414010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5414010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od5415010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/od5415010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/od5415010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/od5415010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh401010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh401010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh401010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh401010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh403010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh403010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh403010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh403010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh403020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh403020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh403020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh403020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh404010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh404010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh404010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh404010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh405010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh405010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh405010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh405010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh411010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh411010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh411010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh411010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh412010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh412010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh412010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh412010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh413010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh413010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh413010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh413010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh413020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh413020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh413020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh413020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65420020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o65420020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o65420020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o65420020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030g0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o68m030g0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o68m030g0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030g0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030i0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o68m030i0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o68m030i0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030i0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030k0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o68m030k0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o68m030k0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030k0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030m0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o68m030m0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o68m030m0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o68m030m0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o69c03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o69c03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o69c03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o69c03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o69c03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o69c03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o69c03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o69c03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bt03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bt03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bt03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bt03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx20010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx20010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx20010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx20010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx22010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx22010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx22010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx22010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx23010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx23010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx23010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx23010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx24010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx24010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx24010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx24010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx25010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx25010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx25010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx25010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx26010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx26010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx26010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx26010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx27010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx27010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx27010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx27010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx28010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx28010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx28010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx28010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx29010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx29010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx29010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx29010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx30010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx30010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx30010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx30010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx31010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx31010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx31010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx31010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx32010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx32010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx32010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx32010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx33010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx33010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx33010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx33010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx34010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx34010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx34010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx34010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx35010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx35010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx35010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx35010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx36010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx36010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx36010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx36010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx37010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx37010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx37010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx37010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx38010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx38010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx38010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx38010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx39010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx39010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx39010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx39010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx40010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx40010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx40010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx40010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx41010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx41010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx41010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx41010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx42060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx42060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx42060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx42060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx43010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx43010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx43020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx43020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx43030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx43030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx43050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx43050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx43050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx43050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx44060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx44060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx44060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx44060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx45070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx45070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx45070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx45070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx46070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx46070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx46070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx46070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6bx47060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6bx47060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6bx47060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6bx47060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6i401040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6i401040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6i401050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6i401050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i401060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6i401060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6i401060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i401060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6i402010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6i402010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i402010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6i402020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6i402020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6i402020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6i402020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx02z5q_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx02z5q_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx02z5q_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx02z5q_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o6lx03peq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o6lx03peq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o6lx03peq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o6lx03peq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r511010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r511010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r511010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r511010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r511020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r511020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r511020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r511020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r512010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r512010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r512010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r512010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r512020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r512020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r512020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r512020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r513010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r513010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r513010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r513010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r513020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r513020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r513020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r513020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r521010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r521010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r521010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r521010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r521020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r521020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r521020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r521020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r522010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r522010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r522010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r522010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r522020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r522020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r522020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r522020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r523010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r523010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r523010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r523010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r523020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r523020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r523020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r523020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r531010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r531010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r531010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r531010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r531020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r531020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r531020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r531020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r532010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r532010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r532010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r532010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r532020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r532020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r532020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r532020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r533010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r533010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r533010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r533010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r533020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r533020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r533020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r533020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r561010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r561010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r561010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r561010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r561020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r561020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r561020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r561020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r562010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r562010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r562010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r562010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r562020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r562020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r562020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r562020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r563010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r563010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r563010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r563010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r563020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r563020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r563020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r563020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r571010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r571010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r571010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r571010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r571020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r571020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r571020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r571020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r573010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r573010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r573010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r573010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o9r573020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/o9r573020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/o9r573020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/o9r573020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob1j11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob1j11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob1j11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob1j11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3601010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3601010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3601010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3601010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3601020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3601020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3601020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3601020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3602010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3602010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3602010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3602010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3602020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3602020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3602020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3602020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3603010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3603010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3603010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3603010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3603020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3603020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3603020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3603020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3604010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3604010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3604010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3604010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3604020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3604020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3604020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3604020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3605010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3605010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3605010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3605010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3605020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3605020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3605020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3605020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3606010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3606010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3606010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3606010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ob3606020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/ob3606020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/ob3606020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/ob3606020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw06030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw06030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw06030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw06030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw07030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw07030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw07030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw07030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw08030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw08030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw08030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw08030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw12040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw12040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw12040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw12040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw14040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw14040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw14040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw14040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw15040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw15040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw15040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw15040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw16040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw16040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw16040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw16040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw17040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw17040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw17040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw17040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw18040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw18040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw18040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw18040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw23040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw23040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw23040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw23040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw24030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw24030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw24030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw24030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw25030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw25030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw25030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw25030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw26030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw26030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw26030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw26030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw27040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw27040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw27040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw27040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw28030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw28030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw28030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw28030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw35030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw35030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw35030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw35030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw36030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw36030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw36030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw36030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw37030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw37030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw37030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw37030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw38030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw38030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw38030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw38030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw47040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw47040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw47040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw47040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw48040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw48040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw48040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw48040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw51030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw51030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw51030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw51030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw52030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw52030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw52030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw52030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw53030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw53030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw53030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw53030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw54030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw54030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw54030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw54030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw55030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw55030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw55030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw55030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw56030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw56030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw56030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw56030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw57030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw57030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw57030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw57030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw58030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw58030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw58030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw58030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw61030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw61030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw61030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw61030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw62030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw62030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw62030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw62030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw63030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw63030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw63030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw63030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw64030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw64030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw64030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw64030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw65030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw65030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw65030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw65030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw66030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw66030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw66030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw66030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw67030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw67030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw67030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw67030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw68030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw68030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw68030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw68030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw71030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw71030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw71030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw71030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw72030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw72030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw72030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw72030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw73030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw73030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw73030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw73030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw74030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw74030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw74030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw74030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw75030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw75030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw75030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw75030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw76030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw76030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw76030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw76030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw77030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw77030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw77030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw77030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw78030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw78030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw78030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw78030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw81040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw81040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw81040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw81040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw82040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw82040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw82040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw82040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw83030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw83030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw83040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw83040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw83050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw83050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw83050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw83050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw84040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw84040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw84040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw84040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw85040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw85040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw85040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw85040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw86040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw86040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw86040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw86040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw87040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw87040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw87040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw87040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw88040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw88040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw88040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw88040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw91030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw91030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw91030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw91040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw91040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw91040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw91040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw92030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw92030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw92030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw92040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw92040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw92040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw92040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw93030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw93030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw93030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw93040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw93040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw93040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw93040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw94030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw94030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw94030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw94040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw94040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw94040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw94040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw95030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw95030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw95030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw95040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw95040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw95040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw95040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw96030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw96030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw96030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw96040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw96040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw96040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw96040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw97030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw97030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw97030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw97040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw97040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw97040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw97040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw98030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw98030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw98030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiw98040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiw98040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiw98040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiw98040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb5030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiwb5030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiwb5030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb5030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb6030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiwb6030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiwb6030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb6030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb7030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiwb7030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiwb7030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb7030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obiwb8030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obiwb8030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obiwb8030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obiwb8030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq09020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq09020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq09030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq09030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq09040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq09040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq09040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq09040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq10030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq10030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq10040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq10040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq10040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq10040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq11040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq11040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq11040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq11040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obkq12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obkq12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obkq12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obkq12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obqm03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obqm03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obqm03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obqm03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs701010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs701010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs701010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs701010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs702010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs702010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs702010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs702010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs703010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs703010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs703010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs703010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs703020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs703020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs703020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs703020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs704010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs704010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs704010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs704010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs704020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs704020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs704020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs704020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs705010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs705010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs705010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs705010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs706010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs706010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs706010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs706010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs709010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs709010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs709010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs709010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs709020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs709020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs709020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs709020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs710010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs710010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs710010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs710010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs710020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs710020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs710020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs710020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs713010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs713010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs713010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs713010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs714010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs714010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs714010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs714010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs715010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs715010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs715010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs715010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs715020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs715020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs715020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs715020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs716010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs716010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs716010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs716010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/obs716020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/obs716020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/obs716020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/obs716020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m08020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m09010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m09010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m09010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m09010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m10010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m10010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m10010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m10010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m11010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m11010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m11010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m11010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m12010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m12010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m12010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m12010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m13010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m13010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m13010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m13010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m13020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m13020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m13020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m13020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m14010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m14010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m14010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m14010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oc1m14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/oc1m14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/oc1m14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/oc1m14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh10020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh10020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh10020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh10020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh20030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh20030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh20030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh20030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh21030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh21030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh21030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh21030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh22030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh22030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh22030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh22030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/occh30030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/occh30030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/occh30030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/occh30030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh414010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh414010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh414010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh414010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odh415010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odh415010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odh415010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odh415010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn11020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn11020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn11020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn11020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn12020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn12020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn12020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn12020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn13040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn13040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn13040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn13040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn14020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn14020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn14020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn14020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn21nyq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn21nyq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn21nyq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn21nyq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn22o5q_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn22o5q_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn22o5q_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn22o5q_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn23oaq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn23oaq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn23oaq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn23oaq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn24ofq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn24ofq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn24ofq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn24ofq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn25020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn25020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn25020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn25020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn26osq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn26osq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn26osq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn26osq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn27oxq_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn27oxq_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn27oxq_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn27oxq_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn31030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn31030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn31030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn31030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn32030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn32030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn32030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn32030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn33030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn33030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn33030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn33030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn34030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn34030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn34030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn34030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn41040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn41040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn41040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn41040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn42040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn42040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn42040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn42040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn43040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn43040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn43040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn43040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn44040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn44040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn44040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn44040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn45040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn45040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn45040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn45040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn46040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn46040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn46040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn46040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn51040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn51040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn51040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn51050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn51050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn51050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn51050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn52040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn52040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn52040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn52050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn52050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn52050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn52050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn53040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn53040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn53040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn53050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn53050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn53050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn53050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn54040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn54040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn54040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn54050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn54050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn54050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn54050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn61050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn61050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn61050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn61060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn61060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn61060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn61060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn62050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn62050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn62050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn62060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn62060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn62060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn62060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn63050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn63050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn63050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn63060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn63060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn63060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn63060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn64050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn64050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn64050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn64060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn64060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn64060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn64060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn65050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn65050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn65050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn65060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn65060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn65060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn65060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn66050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn66050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn66050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn66060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn66060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn66060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn66060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn81050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn81050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn81060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn81060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn81070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn81070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn81080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn81080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn81080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn81080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn82050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn82050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn82060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn82060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn82070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn82070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn82080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn82080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn82080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn82080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn83050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn83050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn83060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn83060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn83070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn83070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn83080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn83080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn83080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn83080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn84050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn84050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn84060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn84060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn84070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn84070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkn84080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkn84080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkn84080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkn84080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkp01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkp01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkp02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkp02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkp03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkp03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odkp04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odkp04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odkp04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odkp04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv05030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv05030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv05030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv05030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odlv11030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odlv11030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odlv11030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odlv11030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn301010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn301010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn301010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn301010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn302010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn302010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn302010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn302010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn303010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn303010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn303010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn303010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn304030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn304030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn305030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn305030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn306030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn306030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn307010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn307010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn307010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn307010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn308010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn308010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn308020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn308020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odn308030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn308030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn308030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odn308030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq03060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq03060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq03070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq03070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq03080_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq03080_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq03080_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq03080_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq04050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq05040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq05040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq05040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq05050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq05050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq05050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq05050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq06040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq06040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq06040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq06050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq06050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq06050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq06050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/odrq07050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odrq07050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odrq07050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1632.sh&uri=mast:HST/product/odrq07050_flt.fits'




exit 0
