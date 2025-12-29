Swift でのアプリ開発 1
2 章 1 節から 4 節までは Xcode の使い方、Swift の文法、プログラミングの作法など iOS アプリ開発全般について学んでいきます。
皆さんは第 1 章にて Swift の文法と最初の iOS アプリ開発を学習しているのでその部分については復習になります。

今回の環境は、

macOS Big Sur 11.4
Xcode 12.5.1 (12E507)
です。

目次
Playground の基礎
命名と識別子
文字列
コンソール出力
関数
Playground の基礎
Playground[1] は Swift や Objective-C のコードの挙動をビルドすることなく即座に確認できるツールです。
テキストやコード、その実行結果を一緒に表示できるため、コードに関連する情報も見やすく伝えることができます。

新しい Playground の作成
新しい Playgroud を作成してみましょう。
Xcode を開き、メニューバーの [File] > [New] > [Playground…] を選択します。

メニューバーの [File] > [New] > [Playground…] を選択する
Playground のプラットフォームとテンプレートを選択します。
ここでは iOS プラットフォームの Blank テンプレートを選択して [Next] をクリックします。

Playground のプラットフォームとテンプレートを選択する
名前を付けて Playground を保存します。
以下の項目を入力して [Create] をクリックします。

Save As:
ファイルの名前を入力します。
ここでは MyPlayground.playground のままにします。
Where:
保存場所のディレクトリを選択します。
ここでは workspace ディレクトリを選択します。
名前を付けて Playground を保存する
新しい Playground が作成されました。

新しい Playground が作成された
コード部分
新しい Playground が作成されると、以下のコードが記述されています。

import UIKit

var greeting = "Hello, playground"

このコードを実行してみましょう。
行番号の下にある play_circle または、エディタの左下にあるplay_arrowをクリックします。

サイドバーに結果が表示された
エディタの左側にコードの実行結果が表示されました。
この部分は「結果サイドバー」と呼ばれます。

変数 greeting の値が "Hello, playground" であることが分かりました。
このように、コードを編集して即座に実行結果を確認することができます。

確認できたら、エディタの左下にあるstopをクリックして停止しましょう。

エラー対応
以下のコードを記述して実行してみましょう。

let number = 10
number = 5

エラーが発生して、コードの実行が中止されました。

コードの左側にエラーが表示された
このメッセージは number に再代入しようとしたが、let キーワードで宣言された定数であるため、再代入できなかったことを示しています。
定数は設定後の値の変更が不可能であるため、再代入しようとするとエラーが発生します。

reportのようなアイコンをクリックしてみましょう。
エラーの詳細情報と修正提案が表示されます。

コードの左側にエラーが表示された
これは Xcode の Fix-It という機能です。
構文エラーなど、コードに問題がある場合に通知や修正提案をしてくれます。

Change 'let' to 'var' to make it mutable

これは let を var に変更することで値を変更可能にする という提案です。
[Fix] をクリックして、提案された修正を適用してみましょう。

コードの問題が修正された
とても簡単にコードの問題を修正できました。
しかし Fix-It が提案した修正が常に最適なわけではありません。
提案された修正が表面的な問題しか解決しない場合もあるため、それも考慮して修正を適用するか判断しましょう。

説明部分
Playgroud の説明部分は Markdown[2] を用いて記述できます。
自由に記述してみましょう。

1 行コメント
行頭に //: を記述すると、その行はドキュメントにマークアップされる特別なコメントになります。

//: 説明部分のコメントは [CommonMark](https://commonmark.org/) の構文を使用できます。

ブロックコメント
/*: と */ で囲んだ内容もドキュメントにマークアップされる特別なコメントになります。

/*:
### 画像を表示する

1. <https://nnn-training.github.io/faq/images/asteriskun.png> ファイルをダウンロードする
1. `Resources` フォルダに `asteriskun.png` ファイルをドラッグ & ドロップする
1. 説明部分のコメントに `![アスタリスくん](asteriskun.png)` を記述する

![アスタリスくん](asteriskun.png)
*/

記述できたら、メニューバーの [Editor] > [Show Rendered Markup] を選択します。
レンダリングされて、説明部分のコメントが見やすく表示されました。

レンダリングされた
メニューバーの [Editor] > [Show Raw Markup] を選択すると、ソースの表示に切り替えることができます。

練習問題
問1
画面の記号に対応する説明はどれでしょうか。

Xcode の画面
×
A:文字列 B:エラーがある行 C:編集できない箇所 D:結果サイドバー
×
A:エラーがある行 B:文字列 C:結果サイドバー D:実行にかかった時間
○
A:コメント B:編集できない箇所 C:エラーがある行 D:結果サイドバー
×
A:結果 B:コメント C:エラーがある行 D:結果サイドバー
問2
// 10 + 21 + 34
43 + 423
// 2323/101
2345 // 100
/*
23
*/
Please Type!
このコードのうち右の結果表示サイドバーに 23 が表示されるのはどの行でしょう？
コードの左側に書かれた数字は行数を表します。

×
1行目
×
2行目
×
3行目
×
4行目
×
5行目
×
6行目
×
7行目
○
どの行も 23 を表示しない
解説
答えを隠す

問2
// は一行のみのコメントです。
また // 以降のコードはコメントになります。
複数行のコメントは /* ... */ で囲います。

/*
  ここはコメントです。
  コメント部は実行されるコードに影響を与えません。
*/

4行目は Python などの言語では 23 が出力されますが、 swift において // はコメントを示します。
6行目は複数行のコメントの一部となっており、計算は実行されません。

まとめ
Playground は実際のプログラミング環境を簡単に構築でき、コードがどのように動くかを知ることができるツールです。
エラーが見つかった際には、それを直せば即座に結果に反映されます。

命名と識別子
前セクションで、数値の計算ができるようになりました。

基本的な計算は行えますが、実際のプログラミングではもっと問題は複雑です。
その問題とは、コードは変更されるということです。

例を挙げてみましょう。
以下のようにある商品の税込の値段を計算するプログラムがあったとします。

// りんごの税込の値段
200 * 1.08

// いちごの税込の値段
500 * 1.08

// バナナの税込の値段
100 * 1.08

商品の税込の値段は 商品の税抜きの値段 * (1.00 + 消費税率 * 0.01) と計算できます。
現在はこれで正しく計算できています。

しかし、消費税率が変更されたらこのプログラムは正しくなくなります。
その場合に修正が必要になります。

例えば、消費税率を 10% に修正する場合は以下のようになります。

// りんごの税込の値段
200 * 1.1

// いちごの税込の値段
500 * 1.1

// バナナの税込の値段
100 * 1.1

このように、商品の数だけ修正点があります。
今回は 3 箇所でしたが、これがたくさんあると修正はとても大変なものになります。

そこで使うのが変数や定数です。
Swift では var で変数、let で定数を定義します。

上記のコードは以下のようになります。

let taxRate = 10
let tax = 1.0 + Double(taxRate) * 0.01

// りんごの税込の値段
200 * tax

// いちごの税込の値段
500 * tax

// バナナの税込の値段
100 * tax

また、コメントはプログラミングにおいてとても有用なものですが、変数や定数の名前自体もプログラムが何を行っているかを表すのに有用です。
コードを見たときに、200, 500, 100 といった数字が何を表しているかわかりません。

このようにソースコードに直接記述された何の識別子であるかわからない数値をマジックナンバーと呼びます。
マジックナンバーはプログラマから嫌われがちです。

意味を持つ値はそれを表す適切な識別子を持つべきです。
識別子とは、プログラミングにおいて、変数、関数、クラスなどの名前のことを指します。

上記のコードはさらに以下のようになります。

let taxRate = 10
let tax = 1.0 + Double(taxRate) * 0.01

let priceOfApples = 200
let priceOfStrawberries = 500
let priceOfBananas = 100
let totalPriceOfApples = Double(priceOfApples) * tax
let totalPriceOfStrawberries = Double(priceOfStrawberries) * tax
let totalPriceOfBananas = Double(priceOfBananas) * tax

このように、定数にすることで数字をそのまま使用する場合よりも何を行うコードなのかわかりやすくなります。
また、このようなコードは変更に強くなります。

識別子の命名は適切にするべきです。
例えば今回の「〜の値段」のように数を表すものが多い場合は priceOf で始めるようにします。

こうすることで値段を参照する際に priceOf とタイピングすれば定数がサジェストされるので、より高速にコードを書くことができます。
この機能を オートコンプリート と呼びます。

オートコンプリート
合計を表すものは totalPriceOf で始めるようにします。
これは priceOf と区別することで違う要素を表すということがわかるからです。

このように命名は具体的にしましょう。
識別子が長くなる分には全く問題ありません。
なぜなら Xcode にはオートコンプリートがあるからです。

なお、Swift において識別子の命名規則はキャメルケースが推奨されています。
型とプロトコルの識別子は頭文字が大文字の UpperCamelCase にして、それ以外の識別子は頭文字が小文字の lowerCamelCase にします。

命名について詳しく知りたい場合は API Design Guidelines を参照してください。

良い識別子を考えるのは難しいことです。
なかなか良い識別子が思いつかないときは GitHub Copilot や ChatGPT などの生成 AI を活用しても良いでしょう。

ChatGPT に変数名を提案してもらう
演習問題
演習問題では、実際に Playground を使ってコードを書いてみましょう。

ショー
以下のコードはショーの利益を計算しています。
しかし、数値がコードに直接記述されており、理解しにくくなっています。

これらの数値を適切な変数や定数に代入して、式の数値を置き換えましょう。

// チケットの枚数 * チケットの価格 - (ルームレンタル料 + ポスターの制作費)
150 * 10 - (50 + 40)

数値	意味
150	チケットの枚数
10	チケットの価格
50	ルームレンタル料
40	ポスターの制作費
抽選
友達と抽選会を企画・開催することになり、あなたは利益の 10% をもらうことになりました。
利益は賞金（売上の半分）と経費（印刷費と広告費）を引いたものです。

以下の値を変更して、あなたの取り分が 100 以上になるようにしてください。

let ticketsSold = 1000 // 販売チケット数
let ticketPrice = 1    // チケットの価格
let printingCosts = 20 // 印刷費
let advertising = 50   // 広告費

以下の計算式は変更しないでください。

let totalTakings = ticketPrice * ticketsSold        // 売上合計額
let jackpot = totalTakings / 2                      // 賞金
let totalExpenses = printingCosts + advertising     // 費用
let profit = totalTakings - jackpot - totalExpenses // 収益

let programmersCut = profit / 10                    // あなたの取り分
let friendsCut = profit - programmersCut            // 友達の取り分

iPhone のストレージ
iPhone のストレージがどれだけ残っているのか、そして何分間の動画が保存できるのかを計算します。

以下の情報から、残りのストレージに何分間の動画を保存できるのか計算してください。
なお、計算はすべてメガバイトで行ってください。

情報
iPhone ストレージ: 8GB
使用済み: 3GB
1GB: 1000MB
1 分間の動画: 150MB
コードの可読性
あるプログラマから、トラックの荷物積み込みに関するコードを引き継ぎました。
以下のメモを元に、識別子を分かりやすく改名して、必要に応じてコメントを追加してコードの意味が一目で理解できるようにしてください。

メモ
オレンジのパレットの重量は 100 ポンド
スイカのパレットの重量は 200 ポンド
トラックの左側に積み込んでから右側に積み込み、できるだけバランスを維持する必要があります。
左右にそれぞれいくつ積み込みますか？スイカはすべて同じ側に積み込む必要があります。
コード
let oc = 14
let wc = 3
let ow = 100
let ww = 200
let to = oc * ow
let tw = wc * ww
let ttl = to + tw
let es = ttl / 2
let lhso = es / ow
let rhso = oc - lhso

演習問題の解答例
答えを隠す

ショー
それぞれの定数を以下のように計算して収入と支出を計算すると赤字であるか否かを確認することができます。

let numberOfTickets = 150

let priceOfTickets = 10
let costOfPoster = 40
let feeOfRoomRental = 50

numberOfTickets * priceOfTickets - (feeOfRoomRental + costOfPoster)

定数	数値	意味
numberOfTickets	150	チケットの枚数
priceOfTickets	10	チケットの価格
feeOfRoomRental	50	ルームレンタル料
costOfPoster	40	ポスターの制作費
抽選
数学的に計算式を変形して解くこともできます。 チケットの価格をあげる、販売チケット数を増やす、印刷費、広告費を削減することによって配分を増やすことができます。 例えば、

let ticketsSold = 1070
let ticketPrice = 2
let printingCosts = 20
let advertising = 50

とすることによって、取り分を100以上にすることができます。

iPhone のストレージ
let storageOfiPhone_GB = 8
let mbPerGB = 1000
let sizeOfUsed_GB = 3
let sizeOfVideoPerMinute_MB = 150

(storageOfiPhone_GB * mbPerGB - sizeOfUsed_GB * mbPerGB) / sizeOfVideoPerMinute_MB

まず、扱いやすくするために、それぞれの値に名前をつけて宣言します。 その後に残り容量を計算し、1分のビデオが使う容量で割る事で答えが求められます。

コードの可読性
// オレンジとスイカそれぞれの数
let countOrange = 14
let countWatermelon = 3

// オレンジとスイカそれぞれ一個あたりの重さ
let orangeWeight = 100
let watermelonWight = 200

// オレンジとスイカそれぞれの総重量
let totalOrangeWeight = countOrange * orangeWeight
let totalWatermelonWeight = countWatermelon * watermelonWight

// オレンジとスイカの総重量
let totalWeight = totalOrangeWeight + totalWatermelonWeight

// バランスが維持される際の片側の総重量
let evenWeight = totalWeight / 2

// 左側に積み込めるオレンジの量
let leftLoadOrangeCount = evenWeight / orangeWeight
// 右側に積み込めるオレンジの量
let rightLoadOrangeCount = countOrange - leftLoadOrangeCount

問題文の意図を汲み取って書くとこの様になるのではないでしょうか。

正し、スイカは一方にしか積み込んではならないという制約を正しく満たすためには以下のコードの方が適しています。 ただ、ここまでで学習した内容で書くことは難しいため、上記のコードがかけていれば良いでしょう。

// オレンジとスイカそれぞれの数
let countOrange = 14
let countWatermelon = 13

// オレンジとスイカそれぞれ一個あたりの重さ
let orangeWeight = 100
let watermelonWight = 200

// オレンジとスイカそれぞれの総重量
let totalOrangeWeight = countOrange * orangeWeight
let totalWatermelonWeight = countWatermelon * watermelonWight

// オレンジとスイカの総重量
let totalWeight = totalOrangeWeight + totalWatermelonWeight

// バランスが維持される際の片側の総重量の理想
let evenWeight = totalWeight / 2

// スイカは片側にしか積み込んではならないので一方に積み込む
let leftWatermelonCount = countWatermelon
let rightWatermelonCount = countWatermelon - leftWatermelonCount

// スイカを積み込んだ側の総重量とバランスが維持される際の片側の総重量の理想に余裕がある場合はそちらにギリギリまでオレンジを積み込む
let leftOrangeCount = max(evenWeight - leftWatermelonCount * watermelonWight, 0) / orangeWeight
let rightOrangeCount = countOrange - leftOrangeCount

今まで学習した内容に関する練習問題を解いてみてください。

練習問題
問1
次のうち、変数や定数につける名前としてより適当なのはどちらでしょうか。

×
x
○
price
問2
次のうち、変数や定数につける名前としてより適当なのはどちらでしょうか。

×
age
○
ageOfDog
問3
次のうち、変数や定数につける名前としてより適当なのはどちらでしょうか。

○
caloriesPerBag * boughtPotatoChipsCount
×
calories * boughtCount
問4
「代入」の説明として適当なのはどれでしょうか。

×
実行されないメッセージを追加すること

// アプリケーションを起動する。

×
計算を実行すること

  1 + 1 + 2 + 3 + 5

○
定義された名前を 1 つの値に関連づけること

  let numberOfBread = 22

問5
以下の説明と具体例のうち正しいのはどれでしょうか。

×
キャメルケース：hello_world
×
スネークケース：myName
○
アッパーキャメルケース：LastNight
×
ローワーキャメルケース：videocamera
問6
以下の組み合わせのうち、どちらもSwift において特別な意味があり名前として使うことのできない単語、「キーワード」であるはどれでしょうか。

○
class / let
×
class / now
×
dog / let
×
dog / now
問7
以下のうち、「定数を宣言しています」と言えるものはどれでしょうか。

○
  let count = 100

×
  var count = 100

×
  count = 100

解説
答えを隠す

問1
x では何を示しているのかがわかりませんが、price の方が具体的で価格の様なものを示していることがわかります。
命名は具体的な単語にしましょう。

問2
1 つ目では何の年齢を示しているのかがわかりません。
変数、定数が表している状態が具体的に何なのかわかるとより分かりやすくなります。

問3
2 は何のカロリーなのか、何を買った数なのかがわかりません。
1 つ目のように、何についての値段なのか、何についての数なのかという情報があるとより読みやすいプログラムを書くことができます。

問4
それぞれ、コメント、計算、定数の定義と代入です。

問5
単語の区切りごとに大文字にする書き方を キャメルケース といいます。
最初の文字が大文字の場合は アッパーキャメル 、小文字の場合は ローワーキャメル と区別されます。
myMother の場合は ローワーキャメル です。
Swift は慣習的に ローワーキャメル で変数やメソッドを表します。
また単語をアンダースコア _ で区切る書き方を スネークケース といいます。

問6
class, let は名前として使うことができません。
dog, now は名前として使うことができます。
実際に playground で実行して確かめてみましょう。

問7
定数に限らず、変数なども初めて定義されるときは宣言すると言われます。
上から順に「定数を宣言する」「変数を宣言する」「代入している」と言われます。

まとめ
命名はどんなものでも良いというものではなく、他人が見てもわかりやすいものを心がけましょう。
そう考えるとプログラミングは難しいことのように思えますが、どのようなプログラマもそれに頭を悩ませています。
命名にルールを決めておけば考えるコストを減らすことができます。

文字列
Swift で文字列は文字列リテラルで表すことができます。
文字列リテラルはダブルクォーテーション " で囲われた文字の列のことです。

"こんにちは"

また """ を使用すると、複数行の文字列を表すことができます。

"""
おはよう
こんにちは
こんばんは
"""

連結
Swift では、複数の文字列を繋げて 1 つの文字列にすることを「連結」と呼びます。
+ を使用すると、文字列を連結した新しい文字列が作成されます。

// 新しい文字列 "iPhone 15 Pro" が作成される
var iPhone = "iPhone" + " 15" + " Pro"

+= を使用すると、元の文字列に別の文字列を追加した結果で変数の値が更新されます。

// 新しい文字列 "iPhone 15 Pro Max" が作成されて、変数 iPhone の値は "iPhone 15 Pro" から "iPhone 15 Pro Max" に変更される
// これは iPhone = iPhone + " Max" と同じ
iPhone += " Max"

文字列補間
文字列補間を使用すると、文字列に式を埋め込むことができます。
文字列リテラルに \() を使用して式を埋め込むことで実現できます。

let year = 2023, month = 9, day = 13
let today = "\(year)年\(month)月\(day)日" // 2023年9月13日

エスケープ
文字列中に " を含めたい場合、特別な処理が必要です。
次の例を見てみましょう。

"ダブルクォーテーションは " です。"

これはコンパイルエラーになります。
中央の " はコンパイラによって文字列の終わりと解釈されます。
そのため、中央の " 以降のテキストは対応する開始の " がないと見なされてしまいます。

特殊な文字を文字列に含める場合、その特殊な文字がコードに特別な意味を持たないようにするためにエスケープという処理が必要になります。
Swift では \ を使用して特殊な文字をエスケープします。

これにより、特殊な文字は単なる文字列の一部として認識されて、プログラムに影響を与えることなく使用できます。

エスケープ文字は特殊な文字の直前に置くことで使用できます。
先ほどのコードは以下のように修正することでエラーを回避できます。

"ダブルクォーテーションは \" です。"

エスケープシーケンス
エスケープシーケンスは改行やタブなどの特殊な文字を表現するために用いられます。
エスケープシーケンスは \ で始まります。

以下は主なエスケープシーケンスです。

エスケープシーケンス	説明	例	結果
\\	バックスラッシュ	"\\"	\
\"	ダブルクォーテーション	"\""	"
\n	ラインフィード（改行）	"Hello\nWorld"	Hello
World
\r	キャリッジリターン	"Hello\rWorld"	Hello
World
\t	タブ	"Hello\tWorld"	Hello World
\u{n}	Unicode スカラ[3]	"\u{1F34E}"	🍎
Unicode
Swift は Unicode に対応しています。

Unicode とは ASCII 文字だけでなく、世界で使われるすべての文字を扱えるようにした文字コードの規格です。
Unicode では英語以外にも各国の言語や絵文字が使えます。😎

そのため様々な国のユーザがアプリを使えるようになります。

// さまざまな言語の文字列
let englishGreeting = "Hello, World!"
let chineseGreeting = "你好，世界!"
let spanishGreeting = "¡Hola Mundo!"
let russianGreeting = "Привет мир!"
let japaneseGreeting = "こんにちは、世界!"

また開発者も様々な国にいるのでそれぞれの言語で変数名を使用できます。
ただし、日本語の識別子が非推奨という訳ではありませんが、基本的には英語の識別子が多いです。

let 日本語のあいさつ = "こんにちは、世界!"
let 英語のあいさつ = "Hello, World!"

コンソール
好きな文字列をコンソールに出力してみましょう。

Xcode ウィンドウの左下にある  を押すとコンソールが表示されます。
print("Hello, World!") のようなコードでコンソールに出力できます。

print(_:separator:terminator:) は引数に渡した項目をコンソールに表示する関数です。

コンソールに Hello, World! が表示された
練習問題
リストの作成
以下の文字列を改行区切りで連結した新しい文字列を作成してください。
また、作成した文字列をコンソールに出力して、各項目が 1 行ずつ表示されることを確認してください。

let constants = "文字列の定数を宣言する"
let unicode = "Unicode 文字 😎"
let combining = "文字列の結合"
let interpolation = "文字列補間"
let escaping = "エスケープ文字"
let newline = "新しい行の作成"

ファミリーレストラン
最初のテーブルから 3 つの注文が入りました。

let customerOrderTwo = "ハンバーガー"
let customerOrderOne = "フライドポテト"
let customerOrderThree = "アップルパイ"

接客係は注文内容を確認します。

let serverResponseToTableOne = "ご注文を確認させていただきます。ハンバーガー、フライドポテト、パイナップル。以上でよろしいでしょうか？"

接客係は注文内容を間違えてしまいました。

他のテーブルから、新たに 3 つの注文が入りました。
同じミスを避けるために、注文をコピー & ペーストしたり、再入力することは避けてください。

let customerOrderFour = "ハンバーグステーキ"
let customerOrderFive = "カレーライス"
let customerOrderSix = "オムライス"

let serverResponseToTableTwo = "ご注文を確認させていただきます。＜ここに注文を入れる＞。以上でよろしいでしょうか？"

演習問題の解答例
答えを隠す

リストの作成
let lessonsLearned = constants + "\n"  + unicode + "\n" + combining + "\n" + interpolation + "\n" + escaping + "\n" + newline
print(lessonsLearned)

\n を使うことで改行することができます。

ファミリーレストラン
let serverResponseToTableTwo = "ご注文を確認させていただきます。\(customerOrderFour)、\(customerOrderFive)、\(customerOrderSix)。以上でよろしいでしょうか。"

\(変数名) とすることで、変数の値を文字列中に埋め込むことができます。

今まで学習した内容に関する練習問題を解いてみてください。

練習問題
問1
以下の選択肢のうち正しく文字列を宣言できているのはどれでしょうか。

○
  var osName = "iOS"

×
  var yearOfBirth = 1999

×
  var mySchool = ZEN Study

×
  var myName = 'Yamada'

問2
以下の選択肢のうち文字列として適当なものはどれでしょうか。

×
  "32*443/32432"

×
  "120%"

×
1でも2でもない
○
1と2の両方
問3
以下の選択肢のうち文字列として適当なものはどれでしょうか。

×
  var myBirthday = "string"

○
  "\"32\" is string."

×
1でも2でもない
×
1と2の両方
問4
"33" を実行結果として出力するものはどれでしょうか。

×
3 + 3

×
"3"*2

○
"3" + "3"

×
21 + 12

×
"21" + "12"

問5
"Cannot find 'FriendName' in scope" というエラーが出ています。

エラーのサンプル
以下の原因と解決策のうち最も適当なものはどれでしょうか。

×
文字列補間の書式が違うためバックスラッシュをスラッシュに置き換える
×
文字列補間には文字列を挟み込むことができないため、加算でつなげる
○
変数や定数は大文字と小文字が一致している必要があるため頭のFを小文字のfにしfriendNameとする
問6
qwertyuiop
asdfghjkl
zxcvbnm

この文字列を出力することができないのは次のうちどれでしょう。

○
print('''
qwertyuiop
asdfghjkl
zxcvbnm
''')

×
print("qwertyuiop\nasdfghjkl\nzxcvbnm")

×
print("""
qwertyuiop
asdfghjkl
zxcvbnm
""")

問7
次のうち、Dr. King said,  "I have a dream today!" を文字列として代入しているものはどれでしょうか。

×
let str = Dr. King said,  "I have a dream today!"

○
let str = "Dr. King said,  \"I have a dream today!\""

×
let str = "Dr. King said,  "I have a dream today!""

×
let str = \"Dr. King said,  \"I have a dream today!\"\"

問8
次のうち改行のエスケープシーケンスとして正しいものはどれでしょうか。

○
\n

×
/n

×
/newline

×
\newline

問9
let who = "I"
let animal = "cats"
let reason = "cool"
print("\(who) like \(animal) because they are \(reason).")

以上のコードが I like dogs because they are cute. と出力するためには以下のどの指示に従うのが適当でしょうか。

×
2行目を var animal = "cats" に変更する。 3行目を var reason = "cute" に変更する。

×
4行目を print("\(I) like \(dogs) because they are \(cute).") に変更する。

○
2行目を let animal = "dogs" に変更する。 3行目を var reason = "cool" に変更する。 3行目を reason = "cute" に変更する。

×
3,4行目の間に reason = "cute" を追加する。

解説
答えを隠す

問1
文字列はダブルクォーテーションで囲まれる必要があります。

問2
1も2も文字列です。
特に1は計算式のように見えますが、ダブルクォーテーションで囲まれているため文字列として取り扱われます。

問3
1は文字列ではありません、変数を宣言し代入しているステートメントです。
また、2は文字列と数値の組み合わせに見えますが全体として文字列です。
ダブルクォーテーションで囲まれたものは文字列となりますが、バックスラッシュの後に置かれたダブルクォーテーションは文字列の両端を示すダブルクォーテーションではなく文字として解釈されます。
そのため、"32" is string. という文字列となるわけです。

問4
"3"と"3"は数字の文字です。文字列同士の加算は順番に連結されて一つの文字列となります。
実際に Playground で実行してみましょう。
Swift で文字列の加算は文字列の連結を表します。
文字列に関するリファレンス

問5
文字列補間の書式は正しいです。
文字列補間は文字列だけでなく文字列以外も含めることができます。数値の変数などの式を組み込むことができます。

問6
"""で囲うことで複数行に渡る文字列を表すことができます。''' ではエラーとなります。
また、 \n は改行を意味するため \n とは表示されず改行として出力されます。

問7
Swift はダブルクォーテーションで囲まれたものを文字列として認識し、文字列中のダブルクォーテーションは バックスラッシュを用いてエスケープすることで表します。

問8
エスケープシーケンスは \ で始まります。

問9
animal に入っている "cats" を "dogs" に reason に入っている "cool" を "cute" に変更することで目的は達成されます。
しかし、全て定数で宣言されているため、後から変更したい値を代入することは不可能です。そこで定数で宣言している箇所を変数での宣言に変更することで目的の文字列を出力することができます。

まとめ
Swift はダブルクォーテーション " を文字列リテラルとして扱います。
エスケープ文字はバックスラッシュ \ を使います。
また、細かな挙動を知りたい場合は Playground で確認しながらプログラミングを進めていくとよいでしょう。

コンソール出力
このセクションでは Xcode でのコンソール出力について扱います。
メッセージを表示する方法は 2 つあります。

アプリの UI
コンソール
アプリの UI はユーザの目に触れるもので、コンソールは開発者だけが見るものです。
つまり、それぞれに表示するべきメッセージの性質は異なります。

例えば、ネットワークエラーのメッセージを考えます。
それぞれ、以下のようにするのが適切でしょう。

アプリの UI
ネットワークの状況が不安定です。後ほど再読み込みしてください。
コンソール
Error Domain=NSURLErrorDomain Code=-1009 "The operation couldn’t be completed. (NSURLErrorDomain error -1009.)"
アプリの UI にはエラーを端的に表し、ユーザがどうするべきかを表示します。
一方コンソールには、一見すると難しそうですがエラーの詳細が表示されています。

まず、Error Domain というエラーが発生したカテゴリが書いてあります。
今回の NSURLErrorDomain はネットワークに関連するエラーを表しています。

次にエラーコード (-1009) があります。
これはエラーの種別を表していて、仕様からエラーを検索する際に役立ちます。

そしてメッセージがあります。
具体的に何によりエラーが発生したのかが書いてあります。

この例は NSURLSession という、Foundation フレームワークの通信を行うクラスのものですが、iOS 開発を進めていく上でエラーの基本となる NSError には domain, code というプロパティがあるので、どのエラーも基本的に domain, code を指定するようになっています。

このように、うまく動かないときはコンソールを見ると原因が分かることがあります。
コンソールは Xcode ウィンドウの左下にある  をクリックして表示できます。

Xcode のコンソール
コードの特定の箇所で変数の値を確認したり、コードが期待通りに動作しているかを確認するために print(_:separator:terminator:) を利用できます。
例えば、ループを一巡するたびに変数の値を出力することで、ループの動作を確認できます。

for i in 1...5 {
  print("このループの値は \(i) です。")
}

このように、コンソールの出力はデバッグする際に非常に便利ですが、コンソールはテキストしか表示できないため、アプリケーションの動的な挙動や UI のレンダリングなどを確認するためには、別の方法やデバッグツールを用いる必要があります。

また、Xcode Playground では結果サイドバーにコードの実行結果が表示されるため、わざわざコンソールに出力する必要がないように思えますが、結果サイドバーは Playground 固有の機能であるため、実際のアプリケーションではコンソールに出力する必要があります。

今まで学習した内容に関する練習問題を解いてみてください。

練習問題
問 1
次は、ユーザに表示するメッセージとコンソールに表示するメッセージの例です。ユーザに表示するメッセージとして適当なものはどちらでしょうか。

○
不適切なリクエストです。再度実行してください。
×
Error 1234 (BadRequest): "/abcd/efghi.jk" : 5678
問 2
playground において各行の結果は右側(結果サイドバー)に表示されるのに、メッセージやエラーメッセージなどを print 文などでコンソールなどに出力する理由として正しくないものはどれでしょう。

×
右側(結果サイドバー)に各行の結果が表示されるのは swift の Playground 固有の機能であるため
○
右側(結果サイドバー)には大事な情報しか表示してはならないため軽率に表示させてはならないため
×
右側(結果サイドバー)には1行しか表示できないため
解説
答えを隠す

問 1
ユーザには何が起こっているかをわかりやすいメッセージで、 コンソールには仕様に沿った詳細な情報を表示するべきです。

問 2
2については結果サイドバーは playground 固有の機能なので、大事な情報は結果サイドバーに表示しないべきです。

まとめ
アプリの画面とコンソール出力の関係は、コンサートの舞台と舞台裏のようなものです。
例えば、舞台裏ではスタッフが「フロアマイクをチャンネル2へ」「メインの照明を暗くして」「カメラ1を映して」などのメッセージのやりとりを行っていても 聴衆には「皆さま、ショーへようこそ」というメッセージしか聞こえないようなものです。

コンソールにはアプリの動作を詳細に示すメッセージを表示し、開発者にアプリがどのような状態であるかを伝える役割があります。
これはデバッグの際に役立ちます。

Xcode を使用する際には状況に応じてコンソールの表示/非表示を行い問題に対応していきましょう。

関数
プログラミングにおいて、繰り返し同じことを記述するのは無駄です。
同じような処理をする箇所が複数見つかればコピー & ペーストしがちですがそれはよくないことです。

アプリケーションのコードには修正がつきものです。
コピー & ペーストを行った箇所に修正があれば、その箇所すべてを探して、一つずつ修正して回る作業が必要になります。
これは時間を使う上に修正ミスを引き起こす可能性があります。

これを防ぐために関数を使用します。
関数はコードを機能ごとに分けることができるので、先ほどの繰り返しの箇所を一つの機能として関数にすれば コピー & ペーストの代わりにその関数を呼び出すだけで済みます。

修正があった際もその関数を修正するだけでよいため、修正にかかる時間も短くなり、修正漏れもなくなります。

関数の定義と呼び出し
関数は func キーワードを使用して宣言します。
以下のコードは square という名前の関数を宣言して、呼び出しています。

func square(number: Int) -> Int {
  return number * number
}

square(number: 3) // --> 9

関数定義
func
関数を宣言するためのキーワードです。
square
関数名です。
関数名は func の後に記述します。
関数名は lowerCamelCase にします。
この関数は square という関数名が付けられています。
(number: Int)
引数です。
引数は () で括って , で区切ります。
引数は関数内で定数として扱うことができます。
この引数は Int 型で number というパラメータ名が付けられています。
-> Int
返値の型です。
返値の型は -> の後に記述します。
この関数の返値は Int 型になります。
{ return number * number }
関数の処理です。
関数の処理は {} で括ります。
この関数は number * number の結果を返します。
return は関数の処理を終了して、返値を返すためのキーワードです。
関数呼び出し
square(number: 3)
関数を呼び出すためのコードです。
関数名の後に () を付けて呼び出します。
引数がある場合は () の中に引数を記述します。
この関数は 3 を引数に取り、2 乗した結果の 9 を返します。
引数と返値
引数がない場合は () の中は何も書きません。
また返値が無い場合は、返値の型の部分を省略できます。[4]

func sayHello() {
  print("こんにちは！")
}

引数は「引数ラベル」と「パラメータ名」の 2 つの名前を持ちます。

関数内ではパラメータ名を使用して引数の値を参照します。
関数を呼び出す際は引数ラベルを使用します。
デフォルトでは、パラメータ名が引数ラベルとして使用されます。
また、引数ラベルを _ とすると、呼び出す際に引数ラベルを省略できます。

引数ラベルとパラメータ名を指定した場合
パラメータ名の前に引数ラベルをスペースで区切って記述します。
to が引数ラベル、name がパラメータ名です。

func sayHello(to name: String) {
  print("\(name)さん、こんにちは！")
}

sayHello(to: "ZEN Study") // --> "ZEN Studyさん、こんにちは！"

引数ラベルを省略した場合
引数ラベルが不要な場合、引数ラベルの代わりに _ を記述します。

func sayHello(_ name: String) {
  print("\(name)さん、こんにちは！")
}

sayHello("ZEN Study") // --> "ZEN Studyさん、こんにちは！"

引数ラベルにパラメータ名を使用した場合
引数ラベルを記述していないため、パラメータ名が引数ラベルとして使用されます。

func sayHello(name: String) {
  print("\(name)さん、こんにちは！")
}

sayHello(name: "ZEN Study") // --> "ZEN Studyさん、こんにちは！"

演習問題
文字列のリバース
引数に渡された文字列を逆順にして返す関数 reverseString(_:) を実装してください。

関数名は reverseString とします。
引数は String 型で引数ラベルは省略します。
返値は String 型とします。
Playground で以下のように実行されるようにしてください。

reverseString("Swift") // --> "tfiwS"
reverseString("ZEN Study") // --> "ydutS NEZ"
reverseString("よるすきやきするよ") // --> "よるすきやきするよ"

文字列を逆順にする方法はいくつかありますが、今回は reversed() を使用してください。
このメソッドは "Hello, World!".reversed()" のように呼び出すと、文字列を逆順にした ReversedCollection<String> 型のコレクションを返します。
文字列として扱いたい場合は String 型に変換する必要があります。

ヒントは以上です。
ここからは公式ドキュメントを読みながら実装してみてください。

reversed() のドキュメントは以下のページです。
https://developer.apple.com/documentation/swift/string/reversed()

演習問題の解答例
答えを隠す

文字列のリバース
reverseString(_:) の実装例です。

func reverseString(_ str: String) -> String {
  let reversedStr = String(str.reversed())
  return reversedStr
}

reverseString("Swift") // --> "tfiwS"
reverseString("ZEN Study") // --> "校備予N"
reverseString("よるすきやきするよ") // --> "よるすきやきするよ"

今まで学習した内容に関する練習問題を解いてみてください。

練習問題
問1
次のうち正しいコードはどれでしょうか。

×
let myFunction() {return}

×
func myFunction() return

×
func myFunction() =  {return}

○
func myFunction() {print("Hello")}

問2
以下のコードを実行したときの出力として適当なものを選びなさい。

func printInf() {
  print("Hello")
  printInf()
}

×
"Hello"が1回のみ出力される
×
"Hello"が100回のみ出力される
×
"Hello"が100回以上出力される
○
何も出力されない
問3
以下のコードを実行したときの出力として適当なものを選びなさい。

func printInf() {
  print("Hello")
  printInf()
}
printInf()

×
"Hello"が1回のみ出力される
×
"Hello"が100回のみ出力される
○
"Hello"が100回以上出力される
×
何も出力されない
問4
以下のコードを実行したときの出力として適当なものを選びなさい。

func printInf() {
  printInf()
}
printInf()

×
"Hello"が1回のみ出力される
×
"Hello"が100回のみ出力される
×
"Hello"が100回以上出力される
○
何も出力されない
問5
以下のコードを実行したときの出力として適当なものを選びなさい。

func printInf() {
  print("Hello1")
  printInf()
  print("Hello2")
  printInf()
}
printInf()

○
"Hello1"だけが100回以上出力される
×
"Hello2"だけが100回以上出力される
×
"Hello1"と"Hello2"が100回以上出力される
×
何も出力されない
問6
関数のメリットとして正しいものは、次に何個ありますか。

コードを理解しやすくなる
変更をする際に変更箇所が少なくて済む
ループを記述できる様になる
同じコードを複数回書く必要がなくなる
×
1 個
×
2 個
○
3 個
×
4 個
問7
関数が受け取る値の呼び名として最も適当なものはどれでしょうか。

×
戻り値
○
引数
×
ラベル
×
アンダースコア
問8
count という名前で整数を引数として受け取る関数を宣言しているものとして最も適当なものはどれでしょうか。

○
  func loop(count: Int) { /* 省略 */ }

×
  func loop(Int, count) { /* 省略 */ }

×
  Int count
  func loop(count) { /* 省略 */ }

×
  func loop(Int: count) { /* 省略 */ }

問9
関数を正しく宣言しているものとして最も適当なものはどれでしょうか。

○
func loop(count: Int, name: String) { /* 省略 */ }

×
func loop(Int: count, String, name) { /* 省略 */ }

×
func loop(count, name: Int, String) { /* 省略 */ }

×
func loop(count: Int), (name: String) { /* 省略 */ }

問10
関数を正しく宣言しているものとして最も適当なものはどれでしょうか。

×
func loop() { /* 省略 */ }: String

○
func loop() -> String { /* 省略 */ }

×
func:String loop() { /* 省略 */ }

×
func loop() : String { /* 省略 */ }

解説
答えを隠す

問1
1 のように関数を変数に割り当てたい場合は以下のようにします。

let myFunction: () -> Void = { }

2 は return を {} で囲む必要があります。3 に関しては = で繋ぐ必要はありません。

問2
func printInf() {
  print("Hello")
  printInf()
}

このコードは printInf という関数を宣言しているだけです。関数は呼び出されて初めて関数の中身を実行します。
関数を宣言しただけでは実行されませんので、実行したい場合は呼び出しましょう。

問3
func printInf() {
  print("Hello")
  printInf()
}
printInf()

printInf関数の中でprintInfを呼び出しているので1度呼び出すと、メモリ不足などの他の制約によってプログラムが実行できなくなるまで"Hello"が出力され続けます。このような現象を無限ループと呼びます。
また、print は引数として与えられたものをコンソールに出力することができます。

問4
func printInf() {
  printInf()
}
printInf()

printInf 関数は呼び出されており、内部で再度呼び出しているため3で説明したように無限ループとなっています。
しかし、関数内で print を実行していないため、ただ printInf 関数が実行されているだけとなりコンソールなどに変化は起きません。

問5
func printInf() {
  print("Hello1")
  printInf()
  print("Hello2")
  printInf()
}
printInf()

print("Hello2") が呼び出される前にprintInfが呼び出されています。
クラッシュするまでprint("Hello2") が呼び出される前にprintInfが呼び出されることの繰り返しなので1となります。

問6
ループは for 文や while 文で行うことができるので関数の利点とはいえません。

問7
関数には引数として処理させたい情報を渡すことができます。

問8
引数は 引数名: 型名 と記述します。

問9
引数が複数ある場合はコンマ , で区切ります。

問10
関数が値を返すときは -> 型名 と記述します。

まとめ
関数はプログラミングの中でも基礎的なものの一つです。

関数はそれぞれの異なる機能をまとめることができるので、 コードを書く際は一つの関数にどのような機能を持たせるのかを考えながら書きましょう。

今回はここまでです。

正解できなかった問題は Playground で試したりして復習をしておきましょう。

お疲れさまでした！
学習したことをSNSで報告しよう！



この解説では Xcode の Playground を指しています。
Xcode Playground と Swift Playgrounds は異なります。

Swift Playgrounds は Swift を楽しく学べる iPad と Mac のためのアプリです。
こちらも非常におすすすめです。 ↩︎

swift-cmark という CommonMark パーサライブラリが使用されており、CommonMark の基本的な構文をサポートしています。
詳細は Markup Formatting Reference を参照してください。 ↩︎

Unicode スカラとは、Unicode の文字を表現するための一意の数値です。
例えば 🍎 は Unicode スカラの U+1F34E で表されます。

U+ は Unicode スカラを表す接頭辞です。
1F34E は 16 進数で表される Unicode スカラの値です。
↩︎
関数の返値がない場合、その関数の返値は Void 型になります。
返値が Void 型の場合は -> Void を省略しても構いません。 ↩︎

---
## リンク

[String](https://developer.apple.com/documentation/swift/string)

[URLSession](https://developer.apple.com/documentation/foundation/urlsession)

[NSError](https://developer.apple.com/documentation/foundation/nserror)

[print(_:separator:terminator:)](https://developer.apple.com/documentation/swift/print(_:separator:terminator:))

[reversed()](https://developer.apple.com/documentation/swift/string/reversed())
