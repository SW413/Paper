@echo off
cd C:\Git\LaTeX
pdflatex --synctex=1 master.tex
makeglossaries.exe master
bibtex master
pdflatex --synctex=1 master.tex
pdflatex --synctex=1 master.tex
pdflatex --synctex=1 master.tex
