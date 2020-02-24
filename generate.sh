#!/bin/bash
xelatex resume.tex
alias pdf2htmlEX='docker run -ti --rm -v `pwd`:/pdf bwits/pdf2htmlex pdf2htmlEX'
pdf2htmlEX --decompose-ligature 1 --zoom 1.5 --hdpi 600 --vdpi 600 --process-outline 0 resume.pdf
cat resume.html | sed s/'<head>'/'<head>\n<title>Luis Quesada Torres - Resume - www.luisquesada.com<\/title>\n<link rel="shortcut icon" type="image\/png" href="\/favicon.png"\/>'/ > tmp.html
mv tmp.html resume.html
rm -f resume.aux resume.log resume.out
