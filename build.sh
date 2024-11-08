#!/bin/sh

rm -r build
mkdir -p build
cp root.tex build/root.tex
cp bibliography.bib build/bibliography.bib
cp style.sty build/style.sty

pushd build
java -jar ../arara/arara.jar -v ./root.tex
popd
