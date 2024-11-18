#!/bin/bash
cd java-ts-generator
git pull origin master
cd ..

cd packages
bun run ../java-ts-generator/src/index.ts ./java_base.json ./java.base
bun run ../java-ts-generator/src/index.ts ./java_net_http.json ./java.net.http
bun run ../java-ts-generator/src/index.ts ./paper.json ./paper

read  -n 1 -p "Publish (Control+C to not)" mainmenuinput

cd paper
npm publish
cd ../java.base
npm publish
cd ../java.net.http
npm publish
