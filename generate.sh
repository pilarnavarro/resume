#!/bin/bash
xelatex resume.tex
alias pdf2htmlEX='docker run -ti --rm -v `pwd`:/pdf bwits/pdf2htmlex pdf2htmlEX'
pdf2htmlEX --zoom 1.5 --process-outline 0 resume.pdf
cat resume.html | sed s/'<head>'/'<head>\n<title>Luis Quesada Torres - Resume - www.luisquesada.com<\/title>'/ > tmp.html
mv tmp.html resume.html
