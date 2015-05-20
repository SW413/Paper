#!/bin/bash
# $1 == master.tex
grep "\\input{chapters" $1 | cut -d\{ -f2 | cut -d\} -f1 | xargs -L 1 -I % sh -c 'echo %; ./getOrder.sh %'
