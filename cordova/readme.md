html5 cordova build ios, android.

### xcode

```sh
$ npm i
$ npm i -g cordova
$ cordova platform add ios
$ cordova compile ios

# 更新
$ vim www/
$ cordova prepare ios
$ ls ./platforms/ios
$ open -a Xcode ./platforms/ios/yui.xcodeproj
```

### android

```
$ cordova platform add android
$ cordova compile android

# android sdk install
# curl -s get.sdkman.io | bash
# sdk install gradle

# device download
# start emulate
$ cordova emulate android
```

https://cordova.apache.org/docs/ja/latest/guide/platforms/android/

### icon


```sh
$ cp ./AppIcon.appiconset/icon.zsh ${project}/Images.xcassets/AppIcon.appiconset/
$ cd ${project}/Images.xcassets/AppIcon.appiconset/
$ ./icon.zsh
```

### memo

#### iosアイコンの作成

大きなアイコンを用意したが滲んでいたので、シャープ強にする。

`./AppIcon.appiconset/Contents.json`を用意する必要がある。

#### iosで音がならない

m4aにすると音が出るようになる。ただし、m4aは、tyranorider(web-browser)では出ないので、webでは使えなそう。mp3と同時に書く、連続して書く方法もあるらしい。

```
[playbgm storage=00.m4a]
```

```sh
$ cordova prepare ios
```

#### ボタン位置の調整

`x=0, width=350`にする

```
[glink storage="s02.ks" text="続きを読む" size=20 width="350" x=0 y=230 color=gray font_color=black graphic=more.png clickse=yes.m4a]
```

