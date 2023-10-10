#!/bin/sh
# Created:  MURAOKA Taro
# Modified: itouhiro

files_r=" \
  -f bdf.d/mplus_j12r.bdf \
  -f bdf.d/mplus_j12r-unicode.bdf \
  -f bdf.d/teku_f12r.bdf \
  -f bdf.d/teku_f12r-jisx0201.bdf"
files_b=" \
  -f bdf.d/mplus_j12b.bdf \
  -f bdf.d/mplus_j12b-unicode.bdf \
  -f bdf.d/teku_f12b.bdf \
  -f bdf.d/teku_f12b-jisx0201.bdf"

embed_r=" \
  -e bdf.d/teku_f12r-jisx0201.bdf \
  -e bdf.d/teku_f12r.bdf \
  -e bdf.d/mplus_j12r.bdf \
  -e bdf.d/mplus_j12r-unicode.bdf \
  -e bdf.d/teku_f24r-jisx0201.bdf \
  -e bdf.d/teku_f24r.bdf \
  -e bdf.d/mplus_j24r.bdf \
  -e bdf.d/mplus_j24r-unicode.bdf \
  -e bdf.d/teku_f36r-jisx0201.bdf \
  -e bdf.d/teku_f36r.bdf \
  -e bdf.d/mplus_j36r.bdf \
  -e bdf.d/mplus_j36r-unicode.bdf"
embed_b=" \
  -e bdf.d/teku_f12b-jisx0201.bdf \
  -e bdf.d/teku_f12b.bdf \
  -e bdf.d/mplus_j12b.bdf \
  -e bdf.d/mplus_j12b-unicode.bdf \
  -e bdf.d/teku_f24b-jisx0201.bdf \
  -e bdf.d/teku_f24b.bdf \
  -e bdf.d/mplus_j24b.bdf \
  -e bdf.d/mplus_j24b-unicode.bdf \
  -e bdf.d/teku_f36b-jisx0201.bdf \
  -e bdf.d/teku_f36b.bdf \
  -e bdf.d/mplus_j36b.bdf \
  -e bdf.d/mplus_j36b-unicode.bdf"
gasp="-g 11,2,12,1,23,2,24,1,35,2,36,1,65535,3"

script="scripts/bdf2eps.pl"
# 1000.0 em size / 12 px = 83.33333..
opts="-h 1083 -sc 83.34 -fb Tekuplus"

perl $script $opts -fw Regular -o work.d/12px $files_r $embed_r $gasp
perl $script $opts -fw Bold -o work.d/12pxb $files_b $embed_b $gasp
