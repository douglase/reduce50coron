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
FOLDER=eps_eri_trg
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
<<< Downloading File: mast:HST/product/odn301010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn301010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn301010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn301010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn302010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn302010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn302010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn302010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn303010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn303010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn303010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn303010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn304010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn304010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn304020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn304020_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn304030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn304030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn304030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn304030_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn305010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn305010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn305020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn305020_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn305030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn305030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn305030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn305030_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn306010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn306010_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn306020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn306020_flt.fits'

cat <<EOT
<<< Downloading File: mast:HST/product/odn306030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/odn306030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/odn306030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-25T1626.sh&uri=mast:HST/product/odn306030_flt.fits'


exit 0
