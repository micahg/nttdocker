# NTT Docker Stuff

## Local Testing

Testing github packages locally, go to https://github.com/settings/tokens and create a personal access token with read:packages.

Setup .npmrc in your folder
```
@micahg:registry=https://npm.pkg.github.com
//npm.pkg.github.com/:_authToken=TOKEN_VALUE
```

Setup your package.json (just `npm init` with whatever). This repo has one just to make things easy.

Download your package with npm pack, eg:

```
UI_PKG=$(npm pack @micahg/ntt)
API_PKG=$(npm pack @micahg/nttsrv)
mkdir ntt
mkdir nttsrv
echo $UI_PKG
echo $API_PKG
tar xvf $UI_PKG -C ntt
tar xvf $API_PKG -C nttsrv
```