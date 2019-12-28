/*  メニューSE追加プラグイン ver1.02  */

var menu_se = TYRANO.kag.tmp.menu_se;
var click_on;

//メニューのボタン
$(".menu_save,.menu_load,.menu_window_close,.menu_skip,.menu_back_title").on({
	"touchstart mousedown": function(e) {
		click_on ++;
		if(menu_se.menu_item_clickse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_item_clickse,stop:"true"});
		e.preventDefault();
	},
	"mouseenter": function() {
		click_on = 0;
		if(menu_se.menu_item_enterse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_item_enterse,stop:"true"});
	},
	"mouseleave": function() {
		if(menu_se.menu_item_leavese!="none" && click_on == 0)TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_item_leavese,stop:"true"});
	}
});


//閉じるボタン
$(".menu_close").on({
	"touchstart mousedown": function(e) {
		click_on ++;
		if(menu_se.menu_close_clickse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_close_clickse,stop:"true"});
		e.preventDefault();
	},
	"mouseenter": function() {
		click_on = 0;
		if(menu_se.menu_close_enterse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_close_enterse,stop:"true"});
	},
	"mouseleave": function() {
		if(menu_se.menu_close_leavese!="none" && click_on == 0)TYRANO.kag.ftag.startTag("playse",{storage:menu_se.menu_close_leavese,stop:"true"});
	}
});


//セーブ・ロードデータ
$(".save_list_item").on({
	"touchstart mousedown": function(e) {
		click_on ++;
		if(menu_se.save_list_clickse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.save_list_clickse,stop:"true"});
		e.preventDefault();
	},
	"mouseenter": function() {
		if(click_on == 1) click_on ++;
		else {
			click_on = 0;
			if(menu_se.save_list_enterse!="none")TYRANO.kag.ftag.startTag("playse",{storage:menu_se.save_list_enterse,stop:"true"});
		}
	},
	"mouseleave": function() {
		if(menu_se.save_list_leavese!="none" && click_on == 0)TYRANO.kag.ftag.startTag("playse",{storage:menu_se.save_list_leavese,stop:"true"});
	}
});


//セーブ・バックログのスマホ用ボタン
if(menu_se.button_smart_clickse!="none"){
	$(".button_smart").on("touchstart mousedown",function(){
		TYRANO.kag.ftag.startTag("playse",{storage:menu_se.button_smart_clickse,stop:"true"});
		e.preventDefault();
	});
};
