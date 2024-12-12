Tekuplus : How to Build
=======================

Copyright (C) 2022-2024 itouhiro  
Copyright (C) 2002-2005 M+ FONTS PROJECT


Build
-----

```
$  cd src/
$  sh bdfsize.sh
$  sh prepare.sh
$  LANG=C FONTFORGE="/c/home/bin/fontforge-cygwin_2012_08_02/cygwin/bin/fontforge.exe" sh build.sh
```


Build Requirements
------------------

* Windows 11 (also XP/Vista/8/10)
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


License
-------

M+ FONT LICENSE  
(see [LICENSE.md](./LICENSE.md))
