[![DockerHub](https://img.shields.io/badge/DockerHub-gray.svg?style=popout&logo=Docker)](https://hub.docker.com/repository/docker/nathaliagg/rstudio-xcms)
<img alt="Docker Image Size (tag)" src="https://img.shields.io/docker/image-size/nathaliagg/rstudio-xcms/latest">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/nathaliagg/docker_xcms">


# Docker container for `XCMS` and tandem MS data analysiss

Based on the [Rocker-Project.org](https://www.rocker-project.org/) Docker [RStudio `verse` container](https://hub.docker.com/r/rocker/verse) for [CyVerse Discovery Environment](https://github.com/cyverse-vice/rstudio-verse) (DE) data science workbench.

# Instructions 

## 1 - Pull the container from [DockerHub](https://hub.docker.com/repository/docker/nathaliagg/rstudio-xcms)

```
docker pull nathaliagg/rstudio-xcms:latest
```

## 2 - Run on Atmosphere VM or locally

```
docker run -it --rm -v /$HOME:/app --workdir /app -p 8787:80 -e REDIRECT_URL=http://<IP_ADDRESS_ATMO_VM>:8787 nathaliagg/rstudio-xcms:latest
```

The default username is `rstudio` and password is `rstudio1`. To reset the password, add the flag `-e PASSWORD=<yourpassword>` in the `docker run` statement.
