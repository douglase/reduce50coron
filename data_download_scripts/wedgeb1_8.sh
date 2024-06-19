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
        <h3>Total Files: 28</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o40601030_flt.fits</td>
                <td>HST/o40601030/o40601030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01050_flt.fits</td>
                <td>HST/o43f01050/o43f01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o43f01060_flt.fits</td>
                <td>HST/o43f01060/o43f01060_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g801070_flt.fits</td>
                <td>HST/o4g801070/o4g801070_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65430010_flt.fits</td>
                <td>HST/o65430010/o65430010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65440010_flt.fits</td>
                <td>HST/o65440010/o65440010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o65440020_flt.fits</td>
                <td>HST/o65440020/o65440020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o68m030f0_flt.fits</td>
                <td>HST/o68m030f0/o68m030f0_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t01010_flt.fits</td>
                <td>HST/od9t01010/od9t01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t01020_flt.fits</td>
                <td>HST/od9t01020/od9t01020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t01030_flt.fits</td>
                <td>HST/od9t01030/od9t01030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t02010_flt.fits</td>
                <td>HST/od9t02010/od9t02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t02020_flt.fits</td>
                <td>HST/od9t02020/od9t02020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t02030_flt.fits</td>
                <td>HST/od9t02030/od9t02030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t03010_flt.fits</td>
                <td>HST/od9t03010/od9t03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t03020_flt.fits</td>
                <td>HST/od9t03020/od9t03020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t03030_flt.fits</td>
                <td>HST/od9t03030/od9t03030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t04010_flt.fits</td>
                <td>HST/od9t04010/od9t04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t04020_flt.fits</td>
                <td>HST/od9t04020/od9t04020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/od9t04030_flt.fits</td>
                <td>HST/od9t04030/od9t04030_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k01040_flt.fits</td>
                <td>HST/oe1k01040/oe1k01040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k01050_flt.fits</td>
                <td>HST/oe1k01050/oe1k01050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k02040_flt.fits</td>
                <td>HST/oe1k02040/oe1k02040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k02050_flt.fits</td>
                <td>HST/oe1k02050/oe1k02050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k03040_flt.fits</td>
                <td>HST/oe1k03040/oe1k03040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k03050_flt.fits</td>
                <td>HST/oe1k03050/oe1k03050_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k04040_flt.fits</td>
                <td>HST/oe1k04040/oe1k04040_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k04050_flt.fits</td>
                <td>HST/oe1k04050/oe1k04050_flt.fits</td>
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
<<< Downloading File: mast:HST/product/o40601030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o40601030/o40601030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o40601030/o40601030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o40601030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01050/o43f01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01050/o43f01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o43f01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o43f01060_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o43f01060/o43f01060_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o43f01060/o43f01060_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o43f01060_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o4g801070_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g801070/o4g801070_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g801070/o4g801070_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o4g801070_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65430010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65430010/o65430010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65430010/o65430010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65430010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65440010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65440010/o65440010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65440010/o65440010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65440010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o65440020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o65440020/o65440020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o65440020/o65440020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o65440020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/o68m030f0_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o68m030f0/o68m030f0_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o68m030f0/o68m030f0_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/o68m030f0_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t01010/od9t01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t01010/od9t01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t01020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t01020/od9t01020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t01020/od9t01020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t01020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t01030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t01030/od9t01030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t01030/od9t01030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t01030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t02010/od9t02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t02010/od9t02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t02020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t02020/od9t02020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t02020/od9t02020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t02020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t02030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t02030/od9t02030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t02030/od9t02030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t02030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t03010/od9t03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t03010/od9t03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t03020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t03020/od9t03020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t03020/od9t03020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t03020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t03030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t03030/od9t03030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t03030/od9t03030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t03030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t04010/od9t04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t04010/od9t04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t04020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t04020/od9t04020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t04020/od9t04020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t04020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/od9t04030_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/od9t04030/od9t04030_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/od9t04030/od9t04030_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/od9t04030_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k01040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k01040/oe1k01040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k01040/oe1k01040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k01040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k01050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k01050/oe1k01050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k01050/oe1k01050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k01050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k02040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k02040/oe1k02040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k02040/oe1k02040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k02040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k02050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k02050/oe1k02050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k02050/oe1k02050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k02050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k03040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k03040/oe1k03040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k03040/oe1k03040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k03040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k03050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k03050/oe1k03050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k03050/oe1k03050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k03050_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k04040_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k04040/oe1k04040_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k04040/oe1k04040_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k04040_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k04050_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k04050/oe1k04050_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k04050/oe1k04050_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1647.sh&uri=mast:HST/product/oe1k04050_flt.fits'




exit 0
