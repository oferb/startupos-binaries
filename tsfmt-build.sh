#!/usr/bin/env bash

set -ex

npm i -g pkg
git clone https://github.com/vvakame/typescript-formatter.git

cd typescript-formatter
npm i
npm run build

pkg lib/cli.js

mv cli* /binaries/
