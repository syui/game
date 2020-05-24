#!/bin/zsh

# cp /Images.xcassets/AppIcon.appiconset/
mogrify -resize 20x20! icon_1024x1024.png icon-20.png
mogrify -resize 40x40! icon_1024x1024.png icon-20@2x.png
mogrify -resize 60x60! icon_1024x1024.png icon-20@3x.png
mogrify -resize 80x80! icon_1024x1024.png icon-40@2x.png
mogrify -resize 120x120! icon_1024x1024.png icon-40@3x.png
mogrify -resize 180x180! icon_1024x1024.png icon-60@3x.png

cp -rf icon-20@2x.png icon-40.png
cp -rf icon-20@3x.png icon-60.png
cp -rf icon-40@3x.png icon-60@2x.png

mogrify -resize 29x29! icon_1024x1024.png icon-29.png
mogrify -resize 58x58! icon_1024x1024.png icon-29@2x.png
mogrify -resize 87x87! icon_1024x1024.png icon-29@3x.png
mogrify -resize 76x76! icon_1024x1024.png icon-76.png
mogrify -resize 152x152! icon_1024x1024.png icon-76@2x.png
mogrify -resize 167x167! icon_1024x1024.png icon-83.5@2x.png
