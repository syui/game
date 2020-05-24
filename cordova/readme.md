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

