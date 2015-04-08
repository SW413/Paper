#!/usr/bin/env bash
#find . -type f -not -name '*.g4' -not -name '*.sh' | xargs rm
echo "Babun? y/n"
read ans
if [[ $ans = 'y' ]]; then
	path=$(cygpath -w /usr/local/lib/antlr-4.5-complete.jar)
else
	path='/usr/local/lib/antlr-4.5-complete.jar'
fi 
java -jar $path ourLang.g4 -o ../src/com/antlr -no-listener -visitor -package com.antlr
#javac ourLang*.java 