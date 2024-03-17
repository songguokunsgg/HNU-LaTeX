#!/bin/bash

# ------------------------------------------------
#            LaTeX Automated Compiler
#                <By Huangrui Mo>
# Copyright (C) Huangrui Mo <huangrui.mo@gmail.com>
# This is free software: you can redistribute it
# and/or modify it under the terms of the GNU General
# Public License as published by the Free Software
# Foundation, either version 3 of the License, or
# (at your option) any later version.
# ------------------------------------------------

# Set tex compiler
CompilerOrder="2"
CompileName="xelatex"

# Get source filename
for f in *.tex
do
    FileName="${f%.*}"
done

args="-synctex=1 -interaction=nonstopmode -file-line-error"

# Set environmental variables
export TEXINPUTS="./:${TEXINPUTS}"
export BIBINPUTS="./:${BIBINPUTS}"
export BSTINPUTS="./:${BSTINPUTS}"

# Build textual content
for i in 1 .. 3; do
    $CompileName $args $FileName
    # Build references and links
    if [ $i -eq 1 ]; then
        bibtex $FileName
    fi
done

# View compiled file, 打开编译出的pdf，该方法每一次编译都会新打开一个页面，不推荐使用
# xdg-open "$FileName.pdf" &

echo "------------------------------------------------"
echo "$CompileName $FileName.tex finished..."
echo "------------------------------------------------"
