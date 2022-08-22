#!/bin/bash

FOLDER="https://artifactory.dbgcloud.io/artifactory/infosec-generic-prod-local/vmt/SSCA/fortify/20.2.0/"
FORTIFY="Fortify_SCA_and_Apps_20.2.0_Linux.tar.gz"

wget ${FOLDER}${FORTIFY}

frpfortifyssc.dwain.infra
10.139.54.247
10.139.54.250


# get the license certificates and profile from Norbert Roestel

TARGETDIR=/usr/local/lib/fortify
SOURCE=$PWD/$FORTIFY
sudo mkdir -p $TARGETDIR
cd $TARGETDIR; sudo  tar -xvzf $SOURCE
echo "run installer manually"

