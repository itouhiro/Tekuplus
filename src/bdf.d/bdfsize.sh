#!/bin/sh
# usage: sh bdfsize.sh

function scale_bdf(){
  TIMES=${1}
  SMALL=${2}
  BIG=${3}

  bdf2bmp ${SMALL}.bdf ${SMALL}.bmp
  magick ${SMALL}.bmp -define bmp:format=bmp3 -compress none -sample ${TIMES}00%  ${BIG}.bmp
  cat ${SMALL}.bdf | awk -v factor=${TIMES} -f bdfscale.awk > tmp_${BIG}.bdf
  bmp2bdf tmp_${BIG}.bdf ${BIG}.bmp ${BIG}.bdf
}

scale_bdf 2 mplus_j12r mplus_j24r
scale_bdf 2 mplus_j12r-jisx0213 mplus_j24r-jisx0213
scale_bdf 2 teku_f12r teku_f24r
scale_bdf 2 teku_f12r-jisx0201 teku_f24r-jisx0201
scale_bdf 2 mplus_j12b mplus_j24b
scale_bdf 2 mplus_j12b-jisx0213 mplus_j24b-jisx0213
scale_bdf 2 teku_f12b teku_f24b
scale_bdf 2 teku_f12b-jisx0201 teku_f24b-jisx0201

scale_bdf 3 mplus_j12r mplus_j36r
scale_bdf 3 mplus_j12r-jisx0213 mplus_j36r-jisx0213
scale_bdf 3 teku_f12r teku_f36r
scale_bdf 3 teku_f12r-jisx0201 teku_f36r-jisx0201
scale_bdf 3 mplus_j12b mplus_j36b
scale_bdf 3 mplus_j12b-jisx0213 mplus_j36b-jisx0213
scale_bdf 3 teku_f12b teku_f36b
scale_bdf 3 teku_f12b-jisx0201 teku_f36b-jisx0201
