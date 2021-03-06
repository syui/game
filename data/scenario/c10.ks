*start
[chara_hide_all wait=true]
[title name="地球・丘の上の小さな家"]
[stopbgm]
[playbgm storage=02.ogg]
[bg storage=i_ie_end.png time=0]
[chara_show name="c_ponta_papa" width=400 top=50]
; #ポンタの父
#蓬塔的父亲
; ん？近くで爆発があったようだが...
?？附近似乎爆炸了...[l][r]
; どうせまた、キョウスケのやつだろう
反正是恭介的家伙[l][r][cm]
; #アイ
#眼
[chara_show name="c_yui" width=300 top=100]
; ......................................
.....................................[l][r][cm]
; #ポンタの父
#蓬塔的父亲
; 今日は、大統領としてではなく、ポンタの父親として
今天不是总统，而是蓬塔的父亲[l][r]
; 君と話がしたくてね、ここに来た
我想和你谈谈，我来了[l][r][cm]
; #アイ
#眼
; #ポンタの父
#蓬塔的父亲
; さて、まず君にとっては残念な知らせなんだが...
好吧，首先，这是您的耻辱...[l][r]
; ああ、これは単なる私の独り言として聞いてくれたまえ...
哦，这是我的寂寞...[l][r][cm]
; 君に関しては、勲章が取り下げになった
勋章已为您撤回[l][r][cm]
; 理由は、まあ、その...君は単なるか弱い少女であり
原因是，你……你只是个虚弱的女孩[l][r]
; かつ、その汚らしい身なりや生い立ちが勲章にそぐわない
而且它们肮脏的外观和教养不适合勋章[l][r]
; 国家の威信を高める効果が見込めないとのことだ
据说提高国民声望的效果不大[l][r][cm]
; それはわかってくれるね？
你能听懂吗[l][r][cm]
; #
#
; アイが手のひらを広げると、そこには飴玉が一つ...
当眼睛张开手掌时，那里只有一颗糖果...[l][r][cm]
; ポンタの父は
蓬塔的父亲[l][r]
; 瞬時にその飴玉をかすめ取ると口の中に放り込んだ
糖果立刻被挖出并扔进我的嘴里[l][r][cm]
; #ポンタの父
#蓬塔的父亲
; ...それはわかってくれるね？(モグモグ)
...你明白吗？ （莫格莫格）[l]
[glink target=*select1 text="うん" size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select2 text="？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select1
[cm]
; #アイ
#眼
; うん・
是啊[l][r][cm]
; #ポンタの父
#蓬塔的父亲
; よろしい
好吧[l][r][cm]
@jump target=*common
*select2
[cm]
; #アイ
#眼
; ？
？[l][r][cm]
; #ポンタの父
#蓬塔的父亲
; ...とにかく
...反正[l][r][cm]
@jump target=*common
*common
[cm]
; #ポンタの父
#蓬塔的父亲
; 君に勲章はなしだ
没有奖牌[l][r]
; 代わりと言ってはなんだが、君の登録証を手配をしておいた
相反，我安排了您的注册卡[l][r]
; これで戸籍が手に入るだろう...あればなにかと役に立つ
这会给你一家人的户口...[l][r][cm]
; ただ、君の名前に関しては、我々では決めかねるので
但是我们不能决定你的名字[l][r]
; その筋で有名な伊藤 裕二(いとう ゆうじ)という教育者を尋ねるといい
询问以该来源闻名的教育家伊藤雄二[l][r]
; 姓名占い？みたいなのをやっているらしいのでね
算命？看来您正在做类似的事情[l][r][cm]
; では、これで失礼するよ
我很抱歉[l][r][cm]
; #
#
; ガチャ
加查[l][r]
; (ポンタの父親はスタスタと歩き去った)
（庞塔的父亲与斯塔斯塔（Sstasta）走开了）[l][r][cm]
[chara_hide name="c_ponta_papa"]
; #
#
; (それから数分後)
（几分钟后）[l][r][cm]
; ...ガチャ
...加沙[l][r][cm]
; #キョウスケ
#恭介
[chara_show name="c_kyousuke" width=300 top=100]
; おっさん、帰ったか？
叔叔你回来了吗[l][r][cm]
; #アイ
#眼
; うん
是啊[l][r][cm]
; #ポンタ
#蓬塔
[chara_show name="c_ponta" width=300 top=100]
; お父さんがなにか嫌なこと言わなかった？
爸爸没有说什么恶心吗？[l][r][cm]
; #アイ
#眼
; うん・アメ食べてたよ
是的，我在吃糖果[l][r][cm]
; #ポンタ
#蓬塔
; ...そう、ならいいんだけど
...很好[l][r][cm]
; でも、勲章は残念だったね、アイだけもらえないなんて
但是奖牌令人失望，我没注意到[l][r][cm]
; #キョウスケ
#恭介
; 俺たちも呼び出されてな、抗議したんだぜ
我们没有打电话，我们抗议[l][r][cm]
; 女の子だからなんだ！あいつが一番役に立ったぞって
真是个女孩！他是最有用的[l][r][cm]
; まあ、今回は残念だったな
好吧，这次我很失望[l][r][cm]
; だが、俺はしっかりと頂いて見せびらかしてやるぜ！
但我会得到证明并炫耀它！[l][r]
; 安心しろ
放心[l][r][cm]
; #ポンタ
#蓬塔
; ...なんの安心なの
...多么安全[l][r][cm]
; でも、僕たち思ったんだ...
但是我们认为...[l][r][cm]
; #キョウスケ
#恭介
; あの頑固おやじ達のやり方を変えていかなきゃいけないってな！
我必须改变固执的父亲的方式！[l][r][cm]
; まあ、おっさんたちにも色々あんだろうけどさ
好吧，我猜有很多叔叔[l][r]
; 燃えるぜ！
烧！[l][r][cm]
; #アイ
#眼
; (アイはただ黙って話を聞いていた)
（艾只是默默地听着）[l][r][cm]
; (アイは勲章が欲しかった？)
（眼睛想要勋章吗？）[l]
[glink target=*select3 text="うん" size=20 width="200" y=130 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[glink target=*select4 text="？" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
*select3
[cm]
; #アイ
#眼
; うん
是啊[l][r]
; #アイ
#眼
@jump target=*common1
*select4
; #アイ
#眼
; ？
？[l][r]
; #アイ
#眼
@jump target=*common1
*common1
; （そうだね・）
（是的）[l][r][cm]
; #
#
; ......................................
.....................................[l][r][cm]
[chara_hide_all wait=true]
[bg storage=i_ie.png time=0]
; #
#
; アイはその日、とても気分がいいので
那天爱感觉很好[l][r]
; 夜の散歩に出かけることにした
决定去散步[l][r][cm]
[chara_show name="c_yui" width=400 top=50]
; #アイ
#眼
; ？
？[l][r][cm]
; なんだろうこれ？
这是什么[l][r][cm]
; #
#
[chara_show name="c_zeusu_2" width=400 top=50 opacity=50]
; そこにはなにかの破片が落ちている
一些碎片掉到那里[l][r][cm]
; どうやら昼間に爆発したのはこれらしい
显然它在白天爆炸了[l][r][cm]
; アイは部品の破片に手をやる
眼睛看碎的手[l][r][cm]
; #アイ
#眼
; ！？
！ ？[l][r][cm]
; #
#
; いままで感じたことのない構成
从未有过的配置[l][r]
; 異質さを感じた
我觉得很异国[l][r][cm]
; まるで地球に存在するものではないような...
就像地球上不存在...[l][r]
; そんな感覚
这样的感觉[l][r][cm]
; ......................................
.....................................[l][r][cm]
[chara_hide name="c_zeusu_2"]
; #
#
; 落ちていた部品は、ゼウス2号のものだった
掉落的零件来自宙斯二世[l][r][cm]
; アイは、最も小さな物質に作用するという不思議なちからを持っていた
眼睛具有对最小物质起作用的奥秘[l][r][cm]
; 実はこのとき、ゼウス2号の機能がアイに取り込まれる
实际上，此时，Zeus 2的功能已​​被人们所重视[l][r][cm]
; ゼウス2号は2つの機能を備えており
宙斯2具有两个功能[l][r]
; 一つは反重力装置、もう一つはワープである
一种是反重力装置，另一种是翘曲装置[l][r][cm]
; しかも、アイはそのうちの一つ、ワープ機能を解析した上、独自改変し
此外，Eye分析了其中一项，即翘曲功能，[l][r]
; 量子テレポーテーションに変化させることに成功していた
成功地改变了量子隐形传态[l][r][cm]
; それは小さな物質である量子どうしが特殊な関係にある場合
在这种情况下，小物质的量子具有特殊关系[l][r]
; その2つの物質間では瞬時に情報を転送できるというものだった
信息可以在两种物质之间即时传递。[l]
[glink storage="c11.ks" text="MORE" size=20 width="200" y=230 color=gray font_color=black graphic=more.png clickse=yes.ogg]
[s]
