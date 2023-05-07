# NTT Docker Stuff

This repository is used to create and upload Network Table Top docker images
that people can use at home.

The combined image is an intentionally low-requirements image that can be
deployed on a home computer without any complicated setup. It is composed
of the UI build dumped into the public folder of the nodejs environment
that runs the middle tier.

To make life easy there is no authentication, reverse proxying, etc in the
home-build.

## Local Testing

Testing github packages locally, go to https://github.com/settings/tokens and
create a personal access token with read:packages.

Setup .npmrc in your folder
```
@micahg:registry=https://npm.pkg.github.com
//npm.pkg.github.com/:_authToken=TOKEN_VALUE
```

Once you can pull packages from github then you can follow the
(github action)[.github/workflows/combined.yaml] steps
