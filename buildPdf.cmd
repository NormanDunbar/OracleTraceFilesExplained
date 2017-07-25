@echo off
rem
rem Builds a new version of a book with contents and indexes etc
rem all correctly styled. Assumes the utilities on the path include:
rem
rem    pdflatex
rem    makeindex
rem
rem And, that your cmd session is correctly open in the top level directory.
rem
rem Norman Dunbar.
rem Created 30th June 2017.
rem Last Modified: 30th June 2017.
rem

pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex
makeindex -s StyleInd.ist aux_files\OracleTraceFilesExplained.idx
pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex
pdflatex -aux-directory=aux_files OracleTraceFilesExplained.tex

