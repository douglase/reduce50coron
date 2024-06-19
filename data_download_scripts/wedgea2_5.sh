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
        <h3>Total Files: 13</h3>
        <table cellspacing="0" cellpadding="4" rules="all" style="border-width:5px; border-style:solid; border-collapse:collapse;">
            <tr>
                <td><b>URI</b></td>
                <td><b>File</b></td>
                <td><b>Access</b></td>
                <td><b>Status</b></td>
                <td><b>Logged In User</b></td>
            </tr>
            
            <tr>
                <td>mast:HST/product/o4g801090_flt.fits</td>
                <td>HST/o4g801090/o4g801090_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocyn01010_flt.fits</td>
                <td>HST/ocyn01010/ocyn01010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocyn02010_flt.fits</td>
                <td>HST/ocyn02010/ocyn02010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocyn03010_flt.fits</td>
                <td>HST/ocyn03010/ocyn03010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/ocyn04010_flt.fits</td>
                <td>HST/ocyn04010/ocyn04010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k05010_flt.fits</td>
                <td>HST/oe1k05010/oe1k05010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k05020_flt.fits</td>
                <td>HST/oe1k05020/oe1k05020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k06010_flt.fits</td>
                <td>HST/oe1k06010/oe1k06010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k06020_flt.fits</td>
                <td>HST/oe1k06020/oe1k06020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k07010_flt.fits</td>
                <td>HST/oe1k07010/oe1k07010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k07020_flt.fits</td>
                <td>HST/oe1k07020/oe1k07020_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k08010_flt.fits</td>
                <td>HST/oe1k08010/oe1k08010_flt.fits</td>
                <td>PUBLIC</td>
                <td>OK</td>
                <td>anonymous</td>
            </tr>
            
            <tr>
                <td>mast:HST/product/oe1k08020_flt.fits</td>
                <td>HST/oe1k08020/oe1k08020_flt.fits</td>
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
<<< Downloading File: mast:HST/product/o4g801090_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/o4g801090/o4g801090_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/o4g801090/o4g801090_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/o4g801090_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocyn01010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocyn01010/ocyn01010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocyn01010/ocyn01010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocyn01010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocyn02010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocyn02010/ocyn02010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocyn02010/ocyn02010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocyn02010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocyn03010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocyn03010/ocyn03010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocyn03010/ocyn03010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocyn03010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/ocyn04010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/ocyn04010/ocyn04010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/ocyn04010/ocyn04010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/ocyn04010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k05010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k05010/oe1k05010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k05010/oe1k05010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k05010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k05020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k05020/oe1k05020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k05020/oe1k05020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k05020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k06010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k06010/oe1k06010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k06010/oe1k06010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k06010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k06020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k06020/oe1k06020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k06020/oe1k06020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k06020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k07010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k07010/oe1k07010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k07010/oe1k07010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k07010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k07020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k07020/oe1k07020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k07020/oe1k07020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k07020_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k08010_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k08010/oe1k08010_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k08010/oe1k08010_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k08010_flt.fits'





cat <<EOT
<<< Downloading File: mast:HST/product/oe1k08020_flt.fits
                  To: ${DOWNLOAD_FOLDER}/HST/oe1k08020/oe1k08020_flt.fits
EOT

curl --globoff --location-trusted -f --progress-bar --create-dirs $CONT --output ./${DOWNLOAD_FOLDER}'/HST/oe1k08020/oe1k08020_flt.fits' 'https://mast.stsci.edu/api/v0.1/Download/file?bundle_name=MAST_2023-01-20T1646.sh&uri=mast:HST/product/oe1k08020_flt.fits'




exit 0
