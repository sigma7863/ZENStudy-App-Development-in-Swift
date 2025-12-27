import UIKit

var greeting = "Hello, playground"

//: ## Playground の基礎

// let number = 10
// number = 5 // letは再代入できない

var number = 10
number = 10 // Fix It機能で直した

//: 説明部分のコメントは[CommonMaek](https://commonmark.org/)の構文を使用できます

/*:
 ### 画像を表示する
 
 1. <https://nnn-training.github.io/faq/images/asteriskun.png> ファイルをダウンロードする
 2. `Resources` フォルダに `asteriskun.png`ファイルをドラッグ & ドロップする
 3. 説明部分のコメントに `![アスタリスくん](asteriskun.png)` を記述する
 
 ![アスタリスくん](/asteriskun.png)
 */

//: ## 命名と識別子

// りんごの税込の値段
200 * 1.08

// いちごの税込みの値段
500 * 1.08

// バナナの税込みの値段
100 * 1.08

// 商品の税込の値段は 商品の税抜きの値段 * (1.00 + 消費税率 * 0.01) と計算できる。

// 消費税率を 10% に修正する場合は以下のようになる。

// りんごの税込の値段
200 * 1.1

// いちごの税込みの値段
500 * 1.1

// バナナの税込みの値段
100 * 1.1

// 変数や定数を使う(varで変数, letで定数を定義する)
// let taxRate = 10
// let tax = 1.0 + Double(taxRate) * 0.01 // 下で同じ定数名で定義しているのでコメントアウトしている

// りんごの税込の値段
200 * tax

// いちごの税込みの値段
500 * tax

// バナナの税込みの値段
100 * tax

// 200や500, 計算結果などはマジックナンバー(ソースコードに直接記述された何の識別子であるかわからない数値)で数字が何を表しているか分からないのでそれを表す適切な識別子を持たせる
let taxRate = 10
let tax = 1.0 + Double(taxRate) * 0.01

let priceOfApples = 200
let priceOfStrawberries = 500
let priceOfBananas = 100
let totalPriceOfApples = Double(priceOfApples) * tax
let totalPriceOfStrawberries = Double(priceOfStrawberries) * tax
let totalPriceOfBananas = Double(priceOfBananas) * tax

// 例えば今回の「〜の値段」のように数を表すものが多い場合は priceOf で始めるようにします。
// こうすることで値段を参照する際に priceOf とタイピングすれば定数がサジェストされるので、より高速にコードを書くことができます。
// この機能を オートコンプリート と呼びます。

//: ## 文字列

//: ### 文字リテラル: ダブルクォーテーション "" で囲われた文字列のこと
"こんにちは"

// """ を使用すると、複数行の文字列を表すことができる
"""
おはよう
こんにちは
こんばんは
"""

//: ### 連結: 複数の文字列を繋げて 1 つの文字列にすること
var iPhone = "iPhone" + "15" + "Pro"

// += を使用すると、元の文字列に別の文字列を追加した結果で変数の値が更新される
iPhone += " Max" // iPhone 15 Pro Max

//: ### 文字列補間: 文字リテラルに\()を使うことで()内に式を埋め込める
let year = 2023, month = 9, day = 13
let today = "\(year)年\(month)月\(day)日"

//: ### エスケープ
// "ダブルクォーテーションは " です。" // コンパイルエラー

// 特殊な文字がコードに特別な意味を持たないようにするためにエスケープ \ する
"ダブルクォーテーションは \" です。" // エスケープ文字は特殊な文字の直前に置くことで使用できる

//: ### エスケープシーケンス: 改行やタブなどの特殊な文字を表現するために用いられる, エスケープシーケンスは \ で始まる

// 主なエスケープシーケンス
/*:
 エスケープシーケンス    説明                 例              結果
 \\                  バックスラッシュ       "\\"            \
 \"                  ダブルクォーテーション  "\""            "
 \n                  ラインフィード（改行）  "Hello\nWorld"  Hello
                                                         World
 \r                  キャリッジリターン     "Hello\rWorld"  Hello
                                                         World
 \t                  タブ                "Hello\tWorld"  Hello World
 \u{n}               Unicode スカラ[3]   "\u{1F34E}"     🍎
 */

/*:
 [3]:Unicode スカラとは、Unicode の文字を表現するための一意の数値です。
 例えば 🍎 は Unicode スカラの U+1F34E で表されます。

 U+ は Unicode スカラを表す接頭辞です。
 1F34E は 16 進数で表される Unicode スカラの値です。
 */

//: ### Unicode:  ASCII 文字だけでなく、世界で使われるすべての文字を扱えるようにした文字コードの規格, 英語以外にも各国の言語や絵文字が使える
// さまざまな言語の文字列
let englishGreeting = "Hello, World!"
let chineseGreeting = "你好，世界!"
let spanishGreeting = "¡Hola Mundo!"
let russianGreeting = "Привет мир!"
let japaneseGreeting = "こんにちは、世界!"

// 日本語でも識別子を書ける(非推奨という訳ではありません)が、基本的には英語の識別子が多い
let 日本語のあいさつ = "こんにちは、世界!"
let 英語のあいさつ = "Hello, World!"

//: ### コンソール
print("Hello, World!") //: <https://developer.apple.com/documentation/swift/print(_:separator:terminator:)>: 引数に渡した項目をコンソールに表示する関数


21 + 12

//: ## コンソール入力
// メッセージを表示する方法は2つある
// アプリのUI: ユーザの目に触れるもの
// コンソール: 開発者だけが見るもの

// 例:
// アプリの UI: ネットワークの状況が不安定です。後ほど再読み込みしてください。
// コンソール: Error Domain=NSURLErrorDomain Code=-1009 "The operation couldn’t be completed. (NSURLErrorDomain error -1009.)"

// Error Domain: エラーが発生したカテゴリ
// NSURLErrorDomain: ネットワークに関連するエラー
// エラーコード (-1009): エラーの種別、仕様からエラーを検索する際に役立つ

//: ## 関数
//: ### 関数定義
func square(number: Int) -> Int {
    return number * number
}

square(number: 3) // 9

// func: 関数を宣言するためのキーワード

// square: 関数名, funcの後に記述する

// (number: Int): 引数名,  Int 型で number というパラメータ名が付けられている

// -> Int: 返値の型, 返値の型は ->の後に記述する, この関数の場合, Int型になる

// { return number * number }: 関数の処理, 関数の処理は {} で囲う, この関数は number * number の結果を返す, returnは関数の処理を終了して、返値を返すためのキーワード

//: 関数呼び出し
// square(number: 3): 関数を呼び出すためのコード, 関数名の後に () を付けて呼び出す, 引数がある場合は () の中に引数を記述する, この関数は3を引数に取り、2乗した結果の9を返す

//: ### 引数と返値
// 引数を書かない場合は()の中は何も書かない, 返値がない場合は返値の型を省略できる
// ちなみに、関数の返値がない場合、関数の返値は Void 型になる, 返値が Void 型の場合は -> Void を省略できる
func sayHello() {
    print("こんにちは！")
}

//: ### 引数ラベルとパラメーター名を指定した場合
func sayHello2(to name: String) { // toが引数ラベル、nameがパラメータ名になる
    print("\(name)さん、こんにちは！")
}

sayHello2(to: "ZEN Study") // ZEN Studyさん、こんにちは！

//: ### 引数ラベルを省略した場合
// 引数ラベルが不要な場合、引数ラベルの代わりに _ を記述する
func sayHello3(_ name: String) {
    print("\(name)さん、こんにちは！")
}

sayHello3("ZEN Study") // // ZEN Studyさん、こんにちは！

//: ### 引数ラベルにパラメーター名を使用した場合
// 引数ラベルを記述していないため、パラメーター名が引数ラベルとして使用される
func sayHello4(name: String) {
    print("\(name)さん、こんにちは！")
}

sayHello4(name: "ZEN Study") // "ZEN Studyさん、こんにちは！"
