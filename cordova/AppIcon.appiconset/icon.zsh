#!/bin/zsh

# cp /Images.xcassets/AppIcon.appiconset/
# use : icon_1024x1024.png

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

if [ ! -f ./Contents.json ];then
echo '
{
  "images" : [
    {
      "filename" : "icon-20@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-20@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-29@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-29@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-40@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-40@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-60@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-60@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "60x60"
    },
    {
      "filename" : "icon-20.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-20@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "icon-29.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-29@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "icon-40.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-40@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "icon-76.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "76x76"
    },
    {
      "filename" : "icon-76@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "76x76"
    },
    {
      "filename" : "icon-83.5@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "83.5x83.5"
    },
    {
      "filename" : "icon_1024x1024.png",
      "idiom" : "ios-marketing",
      "scale" : "1x",
      "size" : "1024x1024"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}' > ./Contents.json
fi
