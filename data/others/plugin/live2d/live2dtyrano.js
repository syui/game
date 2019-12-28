var _live2d_tyrano = {
    "tm":{},
    "layer":"0"
};

/*
 #[live2d_new]
 :group
 Live2D
 :title
 Live2Dモデルの定義
 :exp
 Live2Dモデルを読み込みます。
 [live2d_new]を実行した時点ではまだモデルは画面に表示されません。
 その後、[live2d_show]を実行することで画面に表示することができます。
 :sample
 [live2d_new name="haru" model_id="Haru" ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]
:param
 name=モデル名を指定します。省略した場合はmodel_idの値がnameに適応されます。,
 model_id=モデルIDを指定します。modelフォルダ以下に配置されたフォルダ名がモデルIDです。また、○○.model3.jsonなど関連するファイルもすべて同じ名前にします。,
 idle=アイドルモーション名を指定できます。デフォルトは 「Idle」。複数が設定されている場合はランダムに再生されます。 ,
 scale=モデルを表示する時のスケールを指定できます。例えば、1.5を指定すると1.5倍の大きさに拡大されます。デフォルトは１,
 x=モデルのヨコ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。,
 y=モデルのタテ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。,
 lip=キャラクターが話しているシーンで口を動かすかどうかを指定できます。デフォルトはfalse。（リップシンク設定が有効なモデルのみ動作）,
 lip_time=口を動かすスピードを指定できます。デフォルトは100。数値を小さくするとすばやく口が動きます,
 breath=trueかfalseを指定します。デフォルトはtrue。アイドル状態に呼吸しているようなモーションが適応されます。適応したくない場合はfalseを指定してください,
 jname=キャラクターの表示名を指定します。口を動かす場合は必ず指定します。ここで指定した名前を#○○で指定している場合のみ口が動きます。
 #[end]
*/


TYRANO.kag.ftag.master_tag.live2d_new = {
    
    kag: TYRANO.kag,
	vital : ["model_id"],
    	
    pm : {

        name:"",
        model_id:"",
        page:"fore",

        width:"",
        height:"",
        
        idle:"Idle",

        x:"0",
        y:"0",
        scale:"1",

        visible:"false",

        lip:"false",
        lip_time:"100",
        lip_value:"0",
        jname:"none", //キャラクターの名前を指定できます。

        breath:"true", //自然な動作になるように、首振りがはいります。

        next:"true"
        
    },

    start : function(pm) {
        
        var that = this;

        var canvas_id = "live2d_canvas_tyrano";

        //nameを省略した場合はmodel_idがnameになる。
        if(pm.name==""){
            pm.name=pm.model_id;
        }

        //ステータスにモデル情報を配置する。
        if(!TYRANO.kag.stat.live2d_models){
            TYRANO.kag.stat.live2d_models={};
        }

        //Live2D一番最初の実行
        var layer = _live2d_tyrano.layer;
        
        if($("#live2d_canvas_tyrano").size()==0){
            
            var j_canvas = $('<canvas id="'+canvas_id+'" class="'+pm.name+' live2d_model live2d_canvas_tyrano"></canvas>');
            j_canvas.css("position","absolute");
            
            if(pm.width==""){
                pm.width = TYRANO.kag.config.scWidth;
            }
            
            if(pm.height==""){
                pm.height = TYRANO.kag.config.scHeight;
            }
            
            j_canvas.attr("width",pm.width);
            j_canvas.attr("height",pm.height);

            var target_layer = TYRANO.kag.layer.getLayer(layer,pm.page);
            target_layer.show();
            target_layer.append(j_canvas);
            
        }

        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        //lipの設定
        if(pm.lip=="true"){
            
            (function(pm){
                var lip_id = setInterval(function(){
                    //console.log()
                    //lipを更新
                    //該当キャラが喋っているときだけ、口を動かす。
                    if(TYRANO.kag.stat.is_adding_text){
                        
                        var jname = $("." + TYRANO.kag.stat.chara_ptext).html();
                        if(jname==pm.jname){
                            //該当キャラの場合だけ口を動かせ
                            var a = (Math.floor( Math.random() * 101 ))/100 ;
                            _live2d_tyrano.tm.setLipValue(pm.name,a);
                        }

                    }else{
                        _live2d_tyrano.tm.setLipValue(pm.name,0);
                    }

                },parseInt(pm.lip_time));
                pm.lip_id = lip_id; 
            })(pm);

        }


        TYRANO.kag.stat.live2d_models[pm.name] = pm;
        
        //読み込み完了しないと次へはない。
        pm.onFinishLoad = function(){
            if(pm.next=="true"){
                TYRANO.kag.ftag.nextOrder();
            }
        };

        
        //モデルを追加
        _live2d_tyrano.tm.addModel(pm);

        return;
        
        
        
    }
        
};


/*
 #[live2d_show]
 :group
 Live2D
 :title
 Live2Dモデルの表示
 :exp
 Live2Dモデルをゲーム画面に表示します。
 表示するためには予め[live2d_new]タグでモデルを読み込んでおく必要があります。
 :sample
 [live2d_new name="haru" model_id="Haru"  ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]
:param
 name=モデル名を指定します,
 idle=アイドルモーションを変更できます。複数のモーションが指定されている場合はランダムに繰り返し再生します。,
 scale=モデルを表示する時のスケールを指定できます。例えば、1.5を指定すると1.5倍の大きさに拡大されます。デフォルトは１,
 x=モデルのヨコ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。,
 y=モデルのタテ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。
 #[end]
*/


TYRANO.kag.ftag.master_tag.live2d_show = {
    
    kag: TYRANO.kag,
	vital : ["name"],
    pm:{

        name:"",
        /*
        //これは宣言しないけど、つかえるぞい。
        x:"1",
        y:"1",
        scale:"2"
        */

        next:"true"
        
    },

    start : function(pm) {
        
        var that = this;

        var name = pm.name;
        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        pm.visible = "true";
        
        var new_pm = _live2d_tyrano.tm.updateModel(pm);

        TYRANO.kag.stat.live2d_models[pm.name] = new_pm;
        
        
        if(pm.next=="true"){
            TYRANO.kag.ftag.nextOrder();
        }

    }
        
};


/*
 #[live2d_mod]
 :group
 Live2D
 :title
 Live2Dモデルの変更
 :exp
 Live2Dモデルのパラメータを変更します。
 :sample
 [live2d_new name="haru" model_id="Haru"  ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]

 [live2d_mod name="haru" scale=1 ]

 :param
 name=モデル名を指定します,
 idle=アイドルモーションを変更できます,
 scale=モデルを表示する時のスケールを指定できます。例えば、1.5を指定すると1.5倍の大きさに拡大されます。デフォルトは１,
 x=モデルのヨコ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。,
 y=モデルのタテ、立ち位置を指定します。注意点として画面中央が 0 となり、ティラノの他の指定とは異なりますのでご注意ください。
 #[end]

*/


TYRANO.kag.ftag.master_tag.live2d_mod = {
    
    kag: TYRANO.kag,
	vital : ["name"],
    pm:{

        name:"",
        /*
        //これは宣言しないけど、つかえるぞい。
        x:"1",
        y:"1",
        scale:"2"
        */

        next:"true"
        
    },

    start : function(pm) {
        
        var that = this;
        
        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        var new_pm = _live2d_tyrano.tm.updateModel(pm);

        TYRANO.kag.stat.live2d_models[pm.name] = new_pm;
        
        if(pm.next=="true"){
            TYRANO.kag.ftag.nextOrder();
        }

    }
        
};


/*
 #[live2d_delete_all]
 :group
 Live2D
 :title
 Live2Dモデルの削除
 :exp
 すべてのLive2Dモデルを完全に削除します。
 もう一度モデルを使用するには[live2d_new]で改めて定義する必要があります
 用途としては、Live2Dモデルはメモリを多く使用するため
 一度に何体も[live2d_new]を定義しておくのは推奨できません。
 そこで、区切りの良いタイミングで[live2d_delete_all]でメモリを綺麗にしておくことで
 安定した動作を期待できます。
 多くのLive2Dモデルを使用するゲームではうまく活用してください。
 :sample
 [live2d_delete_all]
 :param
 #[end]
*/

TYRANO.kag.ftag.master_tag.live2d_delete_all = {
    
    kag: TYRANO.kag,
	vital : [],
    pm:{

        next:"true"
        
    },

    start : function(pm) {
        
        var that = this;
        
        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        //リップシンクのクリア
        var models = TYRANO.kag.stat.live2d_models;
        for(key in models){
            var _pm = models[key];
            clearInterval(_pm.lip_id);
        }
        
        //モデルを削除
        _live2d_tyrano.tm.deleteAllModel();
        TYRANO.kag.stat.live2d_models={};
        
        $("#live2d_canvas_tyrano").remove();

        tyranolive2dplugin.releaseTyranoManager();
        
        if(pm.next=="true"){
            TYRANO.kag.ftag.nextOrder();
        }

    }
        
};


/*
 #[live2d_hide]
 :group
 Live2D
 :title
 Live2Dモデルの退場
 :exp
 Live2Dモデルを退場させます。
 再度 表示する場合は[live2d_show]でOKです。
 :sample
 [live2d_new name="haru" model_id="Haru"  ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]

 [live2d_hide name="haru" ]

 [live2d_show name="haru" ]

 :param
 name=退場させるモデル名を指定します
 #[end]

*/

TYRANO.kag.ftag.master_tag.live2d_hide = {
    
    kag: TYRANO.kag,
	vital : ["name"],
    pm:{
        name:"",
    },

    start : function(pm) {
        
        var that = this;
        
        var name = pm.name;
        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        pm.visible = "false";
        _live2d_tyrano.tm.updateModel(pm);

        TYRANO.kag.ftag.nextOrder();
        
    }
        
};

/*
 #[live2d_motion]
 :group
 Live2D
 :title
 Live2Dモデルのモーションを再生します
 :exp
 Live2Dモデルのモーションを再生します。
 :sample
 [live2d_new name="haru" model_id="Haru"  ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]
 
 [live2d_motion name="haru" mtn="Test" no=0 ]

 :param
 name=モデル名を指定します,
 mtn=指定したモーションを再生します,
 no=グループを指定できます。例えばひとつのモーション名に複数のモーションファイルが割り当てられている場合に添字を指定してください。デフォルトは0です,
 force=trueかfalseを指定します。trueを指定すると他のモーションが再生中の場合、強制的にモーションを上書きします。デフォルトはtrue
 #[end]

*/

//live2d_motion
TYRANO.kag.ftag.master_tag.live2d_motion = {
    
    kag: TYRANO.kag,
	vital : ["name","mtn"],
    pm:{
        name:"",
        mtn:"",
        no:"0",
        force:"true"
    },

    start : function(pm) {
        
        var that = this;
        var name = pm.name;

        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        //モデルを追加
        _live2d_tyrano.tm.setMotion(pm.name,pm.mtn,parseInt(pm.no),pm.force); //noを最後に渡す。
        
        TYRANO.kag.ftag.nextOrder();
        
        
    }
        
};

/*
 #[live2d_expression]
 :group
 Live2D
 :title
 Live2Dモデルの表情を変更します。
 :exp
 Live2Dモデルの表情（Expression）を変更できます。
 :sample
 [live2d_new name="haru" model_id="Haru"  ]
 [live2d_show name="haru" y=-0.8 x=-0.3 scale=2.5 ]
 
 [live2d_expression name="haru" expression="f03" ]

 :param
 name=モデル名を指定します,
 expression=Expressionを指定します。
 
 #[end]

*/

TYRANO.kag.ftag.master_tag.live2d_expression = {
    
    kag: TYRANO.kag,
	vital : ["name","expression"],
    pm:{
        name:"",
        expression:"",
        next:"true"
        
    },

    start : function(pm) {
        
        var that = this;
        var name = pm.name;

        _live2d_tyrano.tm = tyranolive2dplugin.getTyranoManager();
        
        //表情
        TYRANO.kag.stat.live2d_models[pm.name]["expression"] = pm.expression;
        
        //モデルを追加
        _live2d_tyrano.tm.setExpression(pm.name,pm.expression); //noを最後に渡す。
        
        if(pm.next=="true"){
            TYRANO.kag.ftag.nextOrder();
        }
        //canvas.style.opacity = 1;  
        
        
    }
        
};


/*
 #[live2d_restore]
 :group
 Live2D
 :title
 Live2Dモデルの復元。
 :exp
 セーブデータからロード時にLive2Dモデルを復元するためのタグです。
 必ずmake.ksに記述してください。この記述をしないとロード時に復元できません。
 :sample
 [live2d_restore ]

 :param
 
 #[end]

*/

TYRANO.kag.ftag.master_tag.live2d_restore = {
    
    kag: TYRANO.kag,
	vital : [],
    pm:{
        
    },

    start : function(pm) {

        //モデル
        var models = $.extend({},TYRANO.kag.stat.live2d_models);

        if(Object.keys(models).length <=0){
            TYRANO.kag.ftag.nextOrder();
            return;
        }

        TYRANO.kag.stat.live2d_models = {};
        TYRANO.kag.ftag.startTag("live2d_delete_all",{next:"false"});

        for(key in models){

            var pm = models[key];
            pm.next="false";
            TYRANO.kag.ftag.startTag("live2d_new",pm);
            
        }
       
        for(key in models){

            var pm = models[key];
            
            (function(pm){

                if(pm.expression){
                    pm.next="false";
                    setTimeout(function(){
                        TYRANO.kag.ftag.startTag("live2d_expression",pm);
                    },500);
                }

            })(pm);

        }

        //fadein fadeout の復元
        if(typeof TYRANO.kag.stat.live2d_canvas_visible == "undefined" || TYRANO.kag.stat.live2d_canvas_visible=="on"){
            $("#live2d_canvas_tyrano").css("opacity",1);
        }else{
            $("#live2d_canvas_tyrano").css("opacity",0);
        }
        

        TYRANO.kag.ftag.nextOrder();
        
    }
        
};

/*
 #[live2d_fadein]
 :group
 Live2D
 :title
 Live2D表示レイヤのフェードイン
 :exp
 Live2D表示レイヤをフェードイン表示できます。
 最初に[live2d_fadeout]で非表示にしておいて
 [live2d_new]でLive2Dの表示を完成させてから
 フェードインさせるとスムーズにLive2D画面をつくることができます。
 :sample
 [live2d_fadein time=2000 ]

 :param
 time=フェードインにかける時間を指定してください。ミリ秒で指定します。デフォルトは1000ミリ秒,
 wait=フェードインの完了を待つか否かを指定します。デフォルトはtrue。
 
 #[end]

*/
TYRANO.kag.ftag.master_tag.live2d_fadein = {
    
    kag: TYRANO.kag,
	vital : [],
    pm:{
        time:"1000",
        wait:"true"
    },

    start : function(pm) {

        if(pm.time=="0"){
            pm.time="10";
        }

        var j_canvas = $("#live2d_canvas_tyrano");
        if(j_canvas.size()==0){
            TYRANO.kag.ftag.nextOrder();
            return;
        }

        j_canvas.animate(
            {
                "opacity":1
            },
            parseInt(pm.time),
            function(){

                if(pm.wait=="true"){
                    TYRANO.kag.ftag.nextOrder();
                }
            }
        );

        if(pm.wait=="false"){
            TYRANO.kag.ftag.nextOrder();
        }
                
        TYRANO.kag.stat.live2d_canvas_visible = "on";
        
    }
        
};

/*
 #[live2d_fadeout]
 :group
 Live2D
 :title
 Live2D表示レイヤのフェードアウト
 :exp
 Live2D表示レイヤをフェードアウトできます。
 明示的に[live2d_fadein]するまでモデルが表示されませんのでご注意ください。
 :sample
 [live2d_fadeout time=2000 ]

 :param
 time=フェードアウトにかける時間を指定してください。ミリ秒で指定します。デフォルトは1000ミリ秒,
 wait=フェードアウトの完了を待つか否かを指定します。デフォルトはtrue。
 
 #[end]

*/

TYRANO.kag.ftag.master_tag.live2d_fadeout = {
    
    kag: TYRANO.kag,
	vital : [],
    pm:{
        time:"1000",
        wait:"true"
    },

    start : function(pm) {

        if(pm.time=="0"){
            pm.time="10";
        }

        var j_canvas = $("#live2d_canvas_tyrano");
        if(j_canvas.size()==0){
            TYRANO.kag.ftag.nextOrder();
            return;
        }

        j_canvas.animate(
            {
                "opacity":0
            },
            parseInt(pm.time),
            function(){

                if(pm.wait=="true"){
                    TYRANO.kag.ftag.nextOrder();
                }
            }
        );

        if(pm.wait=="false"){
            TYRANO.kag.ftag.nextOrder();
        }
                
        TYRANO.kag.stat.live2d_canvas_visible = "off";
        
    }
        
};





