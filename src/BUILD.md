Tekuplus : How to Build
=======================

Copyright (C) 2022 itouhiro  
Copyright (C) 2002-2005 M+ FONTS PROJECT


Build
-----

```
$  cd src/
$  cd bdf.d/; sh bdfsize.sh; cd ../
$  sh build_tekuplus.sh
$  fontforge -script tekuplus-regular.pe; fontforge -script tekuplus-bold.pe
$  sh fix_too_wide.sh
```


Build Requirements
------------------

* Windows 10 Pro 64bit  
* FontForge 2012-07-31  
        http://www.geocities.jp/meir000/fontforge/
* ImageMagick 7.0.10-28 Q16 x64  
        https://imagemagick.org/script/download.php#windows
* bdf2bmp version 0.6  
        https://github.com/itouhiro/bdf2bmp
* bmp2bdf version 0.2  
        https://github.com/itouhiro/bmp2bdf
* TTX 2.4 -- From OpenType To XML And Back  
        http://rtfreesoft.blogspot.com/search/label/ttx
* Git for Windows 2.7.4 32bit (bash 4.4, awk 5.0, perl 5.32,..)  
        https://github.com/git-for-windows/git/


Reference
---------

Teku font  
        https://github.com/itouhiro/tekufont

M+ BITMAP FONTS  
        https://mplus-fonts.osdn.jp/mplus-bitmap-fonts/

M+ FONTS scripts  
        https://osdn.net/cvs/view/mplus-fonts/mplus_outline_fonts/scripts/?hideattic=0

Tekuplus scripts are forked from [PixelMplus](https://github.com/itouhiro/PixelMplus),
and PixelMplus scripts are forked from [M+ FONTS](https://mplus-fonts.osdn.jp/).

JIS X 0213:2004 conversion table  
        http://x0213.org/codetable/jisx0213-2004-8bit-std.txt


License
-------

M+ FONT LICENSE  
(see [LICENSE.md](./LICENSE.md))
