# STIS EPS ERI REDUCTION PIPELINE

## Instructions for Docker (recommended for running on personal computer):

This will work on Linux and MacOS natively, and on Windows with WSL (https://learn.microsoft.com/en-us/windows/wsl/install) 

Prerequisites:
1. Docker 
2. Git
3. 
For a list of all STIS coronagraphic images: https://www.stsci.edu/~STIS/monitors/tdf/stis_tdf_coronagraphic.html

To run:
1. Download into local directory using git: 
`git clone https://github.com/saikrishanthpm/reduce50coron.git`
2. Navigate into downloaded directory: 
`cd reduce50coron`
3. Build dockerfile into image:
`docker build -t pipeline .`
4. Run docker container from image:
`docker run -p 8888:8888 -v /path/to/reduce50coron/:/home/jovyan pipeline`
5. You should have a link that is generated after the previous command. Copy and paste it into a web brwoser. 
6. Once Jupyter Lab is open, open a terminal window inside the container
7. In the terminal, type:
`bash data_download_scripts/del_eri_ref.sh` followed by
`bash data_download_scripts/eps_eri_trg.sh`
8. The directories `del_eri_ref` and `eps_eri_trg` contain all 50CORON files for Delta Eridani and Epsilon Eridani. This is a good starting point to test that the pipeline is working and producing reasonable results. 
9. After this you can run the Jupyter Notebook called Pipeline.ipynb

## Instructions for Singularity (recommended for running on HPC):

1. Start an interactive desktop session on your HPC and start a terminal window. This is to ensure that the Jupyter Notebook runs properly. 
2. Download into local directory using git: 
`git clone https://github.com/saikrishanthpm/reduce50coron.git`
3. Navigate into downloaded directory: 
`cd reduce50coron`
4. Edit the last line of the def file to reflect the path to reduce50coron. 
5. Build Singularity image from definition file:
`singularity build stispipeline.sif stispipeline.def`
6. Run singularity container as shell from image:
`singularity shell stispipeline.sif`
7. Execute `bash data_download_scripts/eps_eri_trg.sh` and `bash data_download_scripts/wedgea1_0.sh`. This will download all of WEDGE A1.0 and Epsilon Eridani files. Alternately, instead of downloading WEDGE A1.0, one can also only download Delta Eridani reference files for troubleshooting using `bash data_download_scripts/del_eri_ref.sh`.
8. To reproduce the figure in the paper, change the reference directory to `wedgea1_0` in the pipeline jupyter notebbok, use 90 components, and set maxiters to 1E4. For troubleshooting, if Delta Eridani files have been downloaded, continue with the default values set. 
