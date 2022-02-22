#!/bin/sh
for F in Tekuplus-Regular Tekuplus-Bold TekuplusBit-Regular TekuplusBit-Bold; do
  mv ${F}.ttf ${F}.ttf.orig
  ttx -t OS/2 ${F}.ttf.orig
  cat ${F}.ttf.ttx | sed 's/xAvgCharWidth value=".*"/xAvgCharWidth value="500"/' > ${F}.ttx
  ttx -m ${F}.ttf.orig ${F}.ttx
done
