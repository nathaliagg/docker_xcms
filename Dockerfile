FROM cyversevice/rstudio-verse:latest 

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

