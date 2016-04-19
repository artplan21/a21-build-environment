#!env bash

set -e

D=$( dirname $0 )
cd ${D}/../Resources/Private/Schemas

find . -type f -name "*.xsd" -exec rm "{}" \;

wget -nd -np -m -l1 -D fluidtypo3.org https://fluidtypo3.org/schemas/

find . -type f -name "index.html*" -exec rm "{}" \;

