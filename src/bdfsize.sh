#!/bin/sh
# usage: sh bdfsize.sh

function scale_bdf(){
  TIMES=${1}
  SMALL=${2}
  BIG=${3}

  bdf2bmp bdf.d/${SMALL}.bdf bdf.d/${SMALL}.bmp
  magick bdf.d/${SMALL}.bmp -define bmp:format=bmp3 -compress none -sample ${TIMES}00%  bdf.d/${BIG}.bmp
  cat bdf.d/${SMALL}.bdf | awk -v factor=${TIMES} -f scripts/bdfscale.awk > bdf.d/tmp_${BIG}.bdf
  bmp2bdf bdf.d/tmp_${BIG}.bdf bdf.d/${BIG}.bmp bdf.d/${BIG}.bdf
}

scale_bdf 2 mplus_j12r mplus_j24r
scale_bdf 2 tekuplus_j12r-unicode tekuplus_j24r-unicode
scale_bdf 2 teku_f12r teku_f24r
scale_bdf 2 teku_f12r-jisx0201 teku_f24r-jisx0201
scale_bdf 2 mplus_j12b mplus_j24b
scale_bdf 2 tekuplus_j12b-unicode tekuplus_j24b-unicode
scale_bdf 2 teku_f12b teku_f24b
scale_bdf 2 teku_f12b-jisx0201 teku_f24b-jisx0201

scale_bdf 3 mplus_j12r mplus_j36r
scale_bdf 3 tekuplus_j12r-unicode tekuplus_j36r-unicode
scale_bdf 3 teku_f12r teku_f36r
scale_bdf 3 teku_f12r-jisx0201 teku_f36r-jisx0201
scale_bdf 3 mplus_j12b mplus_j36b
scale_bdf 3 tekuplus_j12b-unicode tekuplus_j36b-unicode
scale_bdf 3 teku_f12b teku_f36b
scale_bdf 3 teku_f12b-jisx0201 teku_f36b-jisx0201
