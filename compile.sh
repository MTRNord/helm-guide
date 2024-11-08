#!/bin/bash

git clone https://gitlab.com/islandoftex/arara.git --depth 1
pushd arara
./gradlew :cli:build
mv cli/build/libs/arara-cli-with-deps-*.jar arara.jar
popd
