*start

[wait time=200]

[title name="オクト星"]

[position layer=message0 width=800 height=280 top=350 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="60" marginl="50" marginr="70" marginb="60" title="test"]

[playbgm storage=00.ogg]

;背景画像の切り替え実行
[bg storage=black.png time=0]
..................................[l][r][ct]
宇宙の遠い遠いところにあるオクト星...[l][r][ct]
[bg storage=hosi_01.png time=0]


[ptext name="chara_name_area" layer=message0 width="200" color=black x=99 y=365 size=26]
[chara_config ptext="chara_name_area"]

#はかせ
[chara_new name="okuto_hakase" storage="okuto_hakase.png" jname="okuto_hakase"]
[chara_show name="okuto_hakase" width=500 top=10]
うーむ、ポセイドン3号でも無理だったか...[l][r][ct]
[chara_new name="item_00" storage="item_00.png" jname="item_00"]
[chara_show name="item_00" top=50]
#ポセイドン3号
..................................[l][r][ct]
[chara_hide name="item_00" ]
#王様
[chara_new name="okuto_ou" storage="okuto_ou.png" jname="okuto_ou"]
[chara_show name="okuto_ou" width=500 top=10]
あれは見つかったかね？はかせ[l][r][ct]
#はかせ
いえ、残念ながら今回も失敗です...[l][r]
この世界で最も小さい物質は[l][r]
見つけることができませんでした[l][r][ct]
#王様
ぐぬぬ...いまだ、宇宙の外に行けぬのか！[l][r][ct]
#はかせ
...無理なものは無理ですよ[l][r]
それよりも、予言のほうを当てにしては？[l][r][ct]
#王様
はかせのくせに！[l][r][ct]
#はかせ
？[l][r]
で、予言の方、進捗どうですか？[l][r][ct]
#王様
ぐぬぬ...予言のほうも...まだ...反応は...ない！[l][r]
(王様は予言者だった)[l][r][ct]
..................................[l][r][ct]
...なんせ数億年に一度、生まれるかどうか[l][r]
見込みなんてほとんど...[l][r][ct]
#？？？
ビッー、ビッー、ビッー！[l][r][ct]
#はかせ
！！！[l][r]
なっ、なんだ、この音！？[l][r][ct]
#王様
あわてるでない、あわてるでない[l][r]
あれは、ただの予言が来たときの音だ、予言が来たときの...[l][r][ct]
..................................[l][r][ct]
・・・な、なんだってーーーー予言が来たあああっ！！？[l][r][ct]
#王様
ドタドタドタ・・・[l][r][ct]
はあ、はあ...[l][r][ct]
#王様
この水晶を見なさい、はかせよ！[l][r][ct]
#ハデス3号
[chara_new name="item_01" storage="item_01.png" jname="item_01"]
[chara_show name="item_01" top=50]
..................................[l][r][ct]
#はかせ
(なんで僕が...)[l][r][ct]
#
(はかせは、水晶を覗き込んだ)[l][r][ct]
#王様
何が見えるね？[l][r][ct]
#はかせ
えーっと、見えるのは...[l][r]
ここからかなり離れた星のようですな[l][r]
...うん、あれは...羊(ひつじ)...いや、人間...かな[l][r]
そこに...[l][r]
..................................[l][r][ct]
そこに、最も小さい物質を[l][r]
見る力を持つ者が生まれるようですっ！！[l][r][ct]
[chara_hide name="item_01" ]
#王様
・・・聞くがよい、はかせよ[l][r][ct]
その宇宙のどはての、ど田舎に、我々が求めていた力を持つ者が生まれるやもしれん[l][r][ct]
#はかせ
(それさっき僕が言ったことじゃないか！)[l][r][ct]
#王様
さて、すぐに準備だ！[l][r][ct]
宇宙法によると、まさに神の力。古い儀式をやる必要がある[l][r][ct]
#はかせ
ま、まさか、ほんとにやるおつもりで？[l][r][ct]
#王様
仕方ないだろ、宇宙法にそう書いてあるんだ[l][r]
その星に住む生き物すべて生贄に捧げよと[l][r][ct]
#はかせ
そんな古臭いもん、無視してもいいと思うけど...[l][r][ct]
#王様
いや、やるぞ！[l][r]
(なにか手違いでもあったら困る)[l][r][ct]
早速、その星にゼウス1号を出発させよ！[l][r][ct]

[chara_hide_all time=1000 wait=true]
[chara_new name="okuto_hei" storage="okuto_hei.png" jname="okuto_hei"]
[chara_show name="okuto_hei" width=500 top=10]

#
こうして地球にゼウス1号が放たれたのであった・・・[l][r]


;[bg storage=black.png time=0]
[glink storage="scene1.ks" text="続きを読む" size=20 width="200" y=230 color=gray font_color=black graphic=more.png]
[s]

