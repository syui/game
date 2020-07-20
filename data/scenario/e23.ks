*start
; ;
;[chara_hide_all wait=true]
[title name="アイvsプラン"]
; ;
;[stopbgm]
; ;
;[playbgm storage=01.ogg]
[bg storage=f_uchusenta.png]
; ;
;[chara_show name="ai" width=400 top=50]
; #アイ
#Eye
; ..................................................
........................................[l][r][cm]
; ..................................................
........................................[l][r][cm]
; #
#
; アイがすごいエネルギー派を放った
Ai fired awesome energy[l][r][cm]
[playse storage=beam.ogg loop=false]
; #プラン
#plan
[chara_show name="c_plan" width=500 top=0]
; ！？
! ?[l][r]
; くっ...くそおおっ！！
Damn ... Damn! ![l][r][cm]
; こ、こんなところで...やられて...たまるかーーーー！！！
Here, this ... ! ![l][r][cm]
; #
#
; プランも同じくエネルギー派で対抗する
The plan also competes with the energy group[l][r]
; しかし、アイのエネルギー派のほうが圧倒的なまでに強力だった
But Ai's energy group was overwhelmingly powerful[l][r][cm]
; #プラン
#plan
; ぐおおおおおおっ！
Guoooooooooo![l][r][cm]
; #
#
; プランは自分の星の大半のエネルギーを使い切ることで
The plan is to use up most of your star's energy[l][r]
; かろうじて耐えることができた
Barely endured[l][r][cm]
; #プラン
#plan
; はあ、はあ、はあ...まさかこんな力を隠し持っていたとはな
Oh, oh, oh ...[l][r][cm]
; #アイ
#Eye
; ..................................................
........................................[l][r][cm]
; #プラン
#plan
; ま、まさか...2発目かよ
No way ... it's the second shot[l][r]
; そりゃ、ないぜ...
That's not it ...[l][r][cm]
; お、おれの完敗だ...
Oh, my defeat ...[l][r][cm]
; みんな...すまない...俺は...たった一人...
Everyone ... I'm sorry ... I ... only one person ...[l][r][cm]
; #アイ
#Eye
; ..................................................
........................................[l][r][cm]
[chara_hide name="ai"]
[chara_show name="c_yui" width=400 top=50]
; #
#
; アイは攻撃をやめ、プランの手を取って、引き上げた
Ai stopped the attack, took the hand of the plan and raised[l][r][cm]
; #アイ
#Eye
; 大丈夫？
Fine?[l][r][cm]
; #プラン
#plan
; は？なっ
What? Become[l][r][cm]
; ..................................................
........................................[l][r][cm]
; ...だが、お前もわかってんだろ？
... but do you know?[l][r]
; 俺の星の力、ほとんど使っちまって...
I almost used my star power ...[l][r][cm]
; #アイ
#Eye
[glink target=*select3 text="うん..." size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select4 text="...？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select3
[cm]
; #アイ
#Eye
; うん...
Yup...[l][r][cm]
; ..................................................
........................................[l][r][cm]
; ...あなたの星のこと、教えてよ
... tell me about your star[l][r][cm]
; #プラン
#plan
; ..................................................
........................................[l][r]
; あ、ああ...
Oh, oh ...[l][r][cm]
; #アイ
#Eye
; ありがとう・
Thank you·[l][r][cm]
; #
#
; こうして戦いの幕は降りたのだった...
The battle was over ...[l][r]
; めでたし、めでたし！
Congratulations, congratulations![l]
[glink storage="end.ks" text="エンディング" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
; ;@jump target=*common1
; @jump target = * common1[;@jump target=*common1
*select4
; #アイ
#Eye
; ...？
...?[l][r][cm]
; ..................................................
........................................[l][r][cm]
; ...あなたの星のこと、教えてよ
... tell me about your star[l][r][cm]
; #プラン
#plan
; ..................................................
........................................[l][r]
; あ、ああ...
Oh, oh ...[l][r][cm]
; #アイ
#Eye
; ありがとう・
Thank you·[l][r][cm]
; #
#
; こうして戦いの幕は降りたのだった...
The battle was over ...[l][r]
; めでたし、めでたし！
Congratulations, congratulations![l]
[glink storage="e24.ks" text="MORE" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
; ;@jump target=*common1
; @jump target = * common1[;@jump target=*common1
; ;*common1
; * common1[;*common1
; ;
;[cm]
[s]
[s]
