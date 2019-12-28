*start
;[chara_hide_all wait=true]
[title name="アイvsプラン"]
;[stopbgm]
;[playbgm storage=01.ogg]
[bg storage=i_octo_hinan.png]
;[chara_show name="ai" width=400 top=50]
#アイ
..................................................[l][r][cm]
..................................................[l][r][cm]
#
アイがすごいエネルギー派を放った[l][r][cm]
[playse storage=beam.ogg loop=false]
#プラン
[chara_show name="c_plan" width=500 top=0]
！？[l][r]
くっ...くそおおっ！！[l][r][cm]
こ、こんなところで...やられて...たまるかーーーー！！！[l][r][cm]
#
プランも同じくエネルギー派で対抗する[l][r]
しかし、アイのエネルギー派のほうが圧倒的なまでに強力だった[l][r][cm]
#プラン
ぐおおおおおおっ！[l][r][cm]
#
プランは自分の星の大半のエネルギーを使い切ることで[l][r]
かろうじて耐えることができた[l][r][cm]
#プラン
はあ、はあ、はあ...まさかこんな力を隠し持っていたとはな[l][r][cm]
#アイ
..................................................[l][r][cm]
#プラン
ま、まさか...2発目かよ[l][r]
そりゃ、ないぜ...[l][r][cm]
お、おれの完敗だ...[l][r][cm]
みんな...すまない...俺は...たった一人...[l][r][cm]
#アイ
..................................................[l][r][cm]
[chara_hide name="ai"]
[chara_show name="c_yui" width=400 top=50]
#
アイは攻撃をやめ、プランの手を取って、引き上げた[l][r][cm]
#アイ
大丈夫？[l][r][cm]
#プラン
は？なっ[l][r][cm]
..................................................[l][r][cm]
...だが、お前もわかってんだろ？[l][r]
俺の星の力、ほとんど使っちまって...[l][r][cm]
#アイ
[glink target=*select3 text="うん..." size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select4 text="...？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select3
[cm]
#アイ
うん...[l][r][cm]
..................................................[l][r][cm]
...あなたの星のこと、教えてよ[l][r][cm]
#プラン
..................................................[l][r]
あ、ああ...[l][r][cm]
#アイ
ありがとう・[l][r][cm]
#
こうして戦いの幕は降りたのだった...[l][r]
めでたし、めでたし！[l]
[glink storage="end.ks" text="エンディング" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
;@jump target=*common1
*select4
#アイ
...？[l][r][cm]
..................................................[l][r][cm]
...あなたの星のこと、教えてよ[l][r][cm]
#プラン
..................................................[l][r]
あ、ああ...[l][r][cm]
#アイ
ありがとう・[l][r][cm]
#
こうして戦いの幕は降りたのだった...[l][r]
めでたし、めでたし！[l]
[glink storage="s24.ks" text="続きを読む" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
;@jump target=*common1
;*common1
;[cm]

[s]
[s]
