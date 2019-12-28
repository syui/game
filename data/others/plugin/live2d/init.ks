
;;Live2D プラグイン

[iscript]
tyranolive2dplugin = {};

TG._live2d_tyrano = {
    "tm":{},
    "layer":"0"
};

[endscript]

[loadjs storage="plugin/live2d/driver/polyfill.min.js" ]
[loadjs storage="plugin/live2d/driver/live2dcubismcore.min.js"]

[loadjs storage="plugin/live2d/driver/index.js"]

;Live2D webGLプラグイン
[loadjs storage="plugin/live2d/live2dtyrano.js"]


