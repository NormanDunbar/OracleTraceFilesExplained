#! /bin/bash

#
# Builds a new version of a book with contents and indexes etc
# all correctly styled. Assumes the utilities on the path include:
#
#    pdflatex
#    makeindex
#
# And, that your shell session is correctly open in the top level directory.
#
# Norman Dunbar.
# Create 30th June 2017
# Last Modified: 30th June 2017.
#

pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex
makeindex -s StyleInd.ist aux_files/OracleTraceFilesExplained.idx
pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex
pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex

