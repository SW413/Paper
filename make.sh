#!/bin/bash
pdflatex --synctex=1 master.tex
makeglossaries master
bibtex master
pdflatex --synctex=1 master.tex
pdflatex --synctex=1 master.tex
pdflatex --synctex=1 master.tex
echo LOL