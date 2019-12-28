*start
[chara_hide_all wait=true]
[title name="地球"]
[stopbgm]
[playbgm storage=01.ogg]
[bg storage=i_hosi_00.png]

;[chara_show name="c_yui" width=400 top=50]

#王様
[chara_show name="c_octo_ou" width=400 top=50]
まさかアイくんが我々を地球に[l][r]
招待してくれるなんて嬉しいなー[l][r][cm]
#アイ
[chara_show name="c_yui" width=400 top=50]
キョウスケが会いたいって[l][r][cm]
#はかせ
[chara_show name="c_octo_hakase" width=400 top=50]
僕たちも地球にはいずれ謝りにいかないとと思っていてね[l][r][cm]
#王様
私は悪くないもーん[l][r]
全部はかせがやったことだもーん！[l][r][cm]
#はかせ
(いや、あんたが一番悪いぞ！)[l][r][cm]
#
[chara_hide_all wait=true]
[chara_show name="c_zeusu_0" width=400 top=50]
アイたちは宇宙船で地球の小さな丘に降り立った[l][r][cm]
#キョウスケ
[chara_hide name="c_zeusu_0"]
[title name="地球・小さな丘"]
[bg storage=i_ie_start.png]
[chara_show name="c_kyousuke" width=400 top=50]
お、その方々が...アイが言ってた宇宙人の？[l][r][cm]
#はかせ
[chara_show name="c_octo_hakase" width=400 top=50]
こ、こんにちは[l][r][cm]
#王様
[chara_show name="c_octo_ou" width=400 top=50]
四つ目！！[l][r]
...地球人もなかなかやりおる[l][r][cm]
#
こうしてキョウスケたちは[l][r]
オクトカットと交流することになったのだった[l][r][cm]
[chara_hide name="c_kyousuke"]
#はかせ
アイくん、この星で一番偉い人はどこにいるのかな？[l][r]
あの時のお詫びを兼ねて[l][r]
オクト星の技術を少しでも提供できたらと思っていてね[l][r][cm]
#アイ
[chara_show name="c_yui" width=300 top=100]
ふーん[l][r][cm]
#はかせ
王様も、ほら！[l][r][cm]
#王様
えーっと、私は...遠慮しちゃおっかな[l][r][cm]
#はかせ
ダメです！僕だけ行くのは変でしょ[l][r][cm]
#
[title name="地球・中央都市"]
[bg storage=i_mati.png]
オクトカットたちはアイのテレポで中央都市に向かった[l][r][cm]
#大統領
[chara_show name="c_ponta_papa" width=400 top=50]
おや、月見唯くんではないか[l][r]
たくさん働いとるかね？[l][r]
おや、そちらの方々は？[cm]
#アイ
昔、地球に四角いの送ってきた人達[l][r][cm]
#大統領
な、なにいいい！？[l][r]
それは本当かね[l][r][cm]
#はかせ
[chara_hide name="c_yui"]
い、いやー、あのときは申し訳ない[l][r]
実はうちのロボットがシステムのバグで突然暴走してしまい...[l][r][cm]
#王様
そうそう[l][r][cm]
#はかせ
だから、地球へのお詫びも兼ねて[l][r]
今回我々の星の技術を提供しようとやって来たのです[l][r][cm]
#大統領
...おおー、それはそれは、大変喜ばしいことです！[l][r][cm]
実はあの件、実害はなく、死亡者もゼロ[l][r]
地球中が四角い宇宙船に囲まれましたが、急に爆風が吹きあれ[l][r]
それが消えると宇宙船も消えていたのですぞ[l][r][cm]
もしやあれもあなた方が？[l][r][cm]
#はかせ
あー、ははははは...[l][r][cm]
#王様
そうとも[l][r]
我々はすぐに間違いに気づき[l][r]
緊急ボタンをね、ポチッとやった気がするわけです[l][r][cm]
#大統領
それはそれは...よかった。大事にならず済みました[l][r]
で、技術協力というのは具体的に何を？[l][r][cm]
#はかせ
そうですね...まずは宇宙船の技術を提供したいと考えています[l][r][cm]
#大統領
う、宇宙船！？それはすごい！！[l][r]
ぜひとも協力していただきたい！！！[l][r][cm]
#はかせ
はい、よろこんで！[l][r][cm]
[chara_hide name="c_octo_ou"]
[chara_hide name="c_octo_hakase"]
[chara_show name="c_yui" width=300 top=100]
#アイ
アイはもう行くよ[l][r][cm]
#大統領
おお、月見唯くん、今回の功績は非常に大きい[l][r]
勲章の授与もやぶさかではないよ[l][r]
期待しておいてくれたまえ[l]

[glink target=*select3 text="うん" size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select4 text="？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select3
[cm]
#アイ
うん[l][r][cm]
#大統領
そうかそうか！[l]
@jump target=*common1
*select4
#アイ
？[l][r][cm]
#大統領
うーむ、君ならそういうと思ったよ...[l]
@jump target=*common1
*common1

[glink storage="s27.ks" text="続きを読む" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]

[s]
