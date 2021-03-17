FROM cyversevice/rstudio-verse:4.0.0-ubuntu18.04

## Source: https://github.com/yufree/xcmsrocker/blob/master/CBverse_xcms/Dockerfile
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    libnetcdf-dev \
    ## rgl support
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    ## tcl tk support
    tcl8.6-dev \
    tk8.6-dev

RUN R -e "install.packages('BiocManager', dependencies=TRUE)"
RUN R -e "remotes::install_github('HenrikBengtsson/matrixStats')"
RUN R -e "BiocManager::install(c('MatrixGenerics','DelayedArray','SummarizedExperiment', 'mzR', 'MSnbase', 'xcms'))"
WORKDIR "/home/rstudio"
RUN mkdir PROJECT_NAME
ADD https://raw.githubusercontent.com/nathaliagg/docker_xcms/main/modified_writeMgfData.R /home/rstudio/PROJECT_NAME/modified_writeMgfData.R
ADD https://raw.githubusercontent.com/nathaliagg/docker_xcms/main/template_pre-processing.Rmd /home/rstudio/PROJECT_NAME/template_pre-processing.Rmd
