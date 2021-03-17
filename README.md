[![DockerHub](https://img.shields.io/badge/DockerHub-gray.svg?style=popout&logo=Docker)](https://hub.docker.com/repository/docker/nathaliagg/rstudio-xcms)
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/nathaliagg/docker_xcms">

# Docker container for `xcms`

Based on the [Rocker-Project.org](https://www.rocker-project.org/) Docker [RStudio `verse` container](https://hub.docker.com/r/rocker/verse) for [CyVerse Discovery Environment](https://github.com/cyverse-vice/rstudio-verse) (DE) data science workbench.

# Instructions

This container is intended to run on the CyVerse data science workbench, called [VICE](https://cyverse-visual-interactive-computing-environment.readthedocs-hosted.com/en/latest/index.html). Full instructions available [here](https://github.com/cyverse-vice/rstudio-verse).

## 1 - Pull the container from DockerHub:

```
docker pull nathaliagg/rstudio-xcms:1.0
```

## 2 - Run on Atmosphere VM

```
docker run -it --rm -v /$HOME:/app --workdir /app -p 8787:80 -e REDIRECT_URL=http://<IP_ADDRESS_ATMO_VM>:8787 nathaliagg/rstudio-xcms:1.0
```

The default username is `rstudio` and password is `rstudio1`. To reset the password, add the flag `-e PASSWORD=<yourpassword>` in the `docker run` statement.
