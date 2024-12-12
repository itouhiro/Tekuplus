#!/bin/sh
# Usage: $ LANG=C FONTFORGE="/c/home/bin/fontforge-cygwin_2012_08_02/cygwin/bin/fontforge.exe" sh build.sh

$FONTFORGE -script tekuplus-regular.pe
$FONTFORGE -script tekuplus-bold.pe

for F in Tekuplus-Regular Tekuplus-Bold TekuplusBit-Regular TekuplusBit-Bold; do
  $FONTFORGE -script scripts/reorder_smp.pe ${F}_nosmp.ttf
  ttx -t OS/2 -o ${F}_os2.ttx ${F}_smp.ttf
  cat ${F}_os2.ttx | sed 's/xAvgCharWidth value=".*"/xAvgCharWidth value="500"/' > ${F}.ttx
  ttx -m ${F}_smp.ttf ${F}.ttx
  mv ${F}.ttf dist/
done
