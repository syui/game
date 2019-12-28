*start
[chara_hide_all wait=true]
[title name="地球・帰り道"]
[playbgm storage=02.ogg]
[bg storage=i_ie_start.png]
; #キョウスケ
#恭介
[chara_show name="c_kyousuke_2" width=400 top=50]
; 今日、学校どうだったよ？みんな注目してたぜ！
你今天学校怎么样？大家都在看！[l][r][cm]
; #ポンタ
#蓬塔
[chara_show name="c_ponta_2" width=400 top=50]
; みんな小さい子が間違えて入ってきたと思ったんだよ
每个人都认为这个小孩是错误地进来的[l][r][cm]
; #
#
[chara_show name="c_yui" width=300 top=100]
; アイは今日はじめて学校に行ってきたのだが
艾未未今天是第一次上学，[l][r]
; ジロジロ見られただけだった
刚刚看到吉里罗[l][r][cm]
; #キョウスケ
#恭介
; それにしても、お前、ほんと成長しないな
无论如何，你并没有真正成长[l][r]
; ごはんちゃんと食ってるのか？
你在吃饭吗？[l][r][cm]
; #ポンタ
#蓬塔
; きっと、あのおじいさんの修行が厳しすぎるんじゃない？
那个老人的训练不是太严格吗？[l][r][cm]
; #アイ
#眼
; ......................................................
...................................................... ....[l][r][cm]
; (アイは、ゼンと会ってから時間が止まってるような気がする...)
（自从遇到Zen之后，我感觉时间已经停止了...）[l][r][cm]
; #キョウスケ
#恭介
; それよりアイが1月生まれだったとは、初耳だぜ
这是艾未未于一月出生[l][r][cm]
; #ポンタ
#蓬塔
; でも自分の年齢くらい覚えておくもんだよ
但是记住你的年龄[l][r]
; 僕たち同期で今は9歳なんだから
我们今年9岁[l][r][cm]
; #アイ
#眼
; うん
是啊[l][r][cm]
; #
#
; そう返事をしたものの
虽然他回应[l][r]
; アイはどこか上の空だった
眼睛是上方的天空[l][r][cm]
; キョウスケやポンタは、これからも成長し、大人になっていくのだろう
Kyousuke和Ponta将继续发展壮大[l][r][cm]
; でも、アイだけが取り残され
但是只剩下眼睛[l][r]
; ずっと7歳のときのままだったら...
如果我7岁...[l][r]
; それは少し寂しい気がする
感觉有点寂寞[l]
[glink target=*select3 text="うん" size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select4 text="？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select3
[cm]
; #アイ
#眼
; (そうだね...少し寂しい気がする)
（是的...我有点孤单）[l][r][cm]
; #アイ
#眼
@jump target=*common1
*select4
; #アイ
#眼
; (そうだね...よくわからないよ)
（是的...我不知道）[l][r][cm]
; #アイ
#眼
@jump target=*common1
*common1
[cm]
[chara_hide_all wait=true]
; #
#
; プランが向こうの方から飛んできた
计划从另一侧飞来[l][r][cm]
; #プラン
#计划
[chara_show name="c_plan" width=500 top=0]
; おう、待たせたなアイ！
哦，等等！[l][r]
; ドラゴン、見に行くぜ！
让我们去看看龙！[l][r][cm]
; #キョウスケ
#恭介
[chara_show name="c_kyousuke_2" width=400 top=50]
; え、ど、ドラゴン！？
哦，龙！ ？[l][r][cm]
; #ポンタ
#蓬塔
[chara_show name="c_ponta_2" width=400 top=50]
; 僕も見たいよー
我也想看[l][r]
; アイだけずるい！
只有眼睛是狡猾的！[l][r][cm]
; #プラン
#计划
; やめとけ！！
别说了！[l][r]
; お前ら死にたくなかったら...やめておけ...
如果你不想死...停下来...[l][r][cm]
; #キョウスケ・ポンタ
#蓬塔京介
; ？
？[l][r][cm]
; #
#
; こうしてアイのドラゴン見学の旅が始まるのであった
就这样，参观爱之龙的旅程开始了[l]
[glink storage="c34.ks" text="MORE" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
