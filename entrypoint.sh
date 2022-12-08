#!/bin/bash

# https://github.com/tsukuba-mas/platex-action/blob/main/entrypoint.sh
# . = /github/workspace if actions/checkout
set -eux

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc .latexmkrc
fi

# make pdf
latexmk -cd $INPUT_LATEX_FILE_NAME