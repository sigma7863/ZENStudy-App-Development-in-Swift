// import UIKit

// var greeting = "Hello, playground"

//: ## アルゴリズムとAPI
//: ### APIの利用
import Foundation

let currentDate = Date()
print(currentDate)

//: ## 定数と変数
//: ### 定数
let birthday = "2006/12/12" // 誕生日は変わらないため、定数を使用する
// birthday = "2007/12/12" // エラーになり、再代入できない

// let birthday: String // 初期値がないため、エラーになる(定数は初期値を省略できない)

//: ### 変数
var address = "東京都" // 住所は変わる可能性があるため、変数を使用する
address = "神奈川県" // 再代入できる

// var address: String // 初期値がなくてもエラーにならない

//: ### 構文
let myConstant: String = "定数"
var myVariable: String = "変数"

// 変数の初期値がない場合は型注釈が必要
// var myVariable: String

// 複数の定数や変数を , で区切って一度に宣言することもできる
// 複数の Int 型の定数を初期化
let myConstant1 = 1, myConstant2 = 2, myConstant3 = 3

// 複数の String 型の変数を定義(型注釈のみ)
var myVariable1, myVariable2, myVariable3: String

// 変更の必要がない場合(値が固定であるべき場合)は定数を使用することによってプログラムの信頼性や保守性、可読性を高めることができる

// プログラムが状態を持つ: 参照するタイミングで値が異なること(変数は1回目と2回目の宣言で値が異なるのでプログラムが状態を持つ)

//: ## 型
//: ### 型安全
// Swiftには強い静的型型付けがある
var age: Int = 16
// age = "16" // Cannot assign value of type 'String' to type 'Int'(String 型の値を Int 型に代入できない)

//: ### 型識別子
//: 型識別子: 型を示す一意の名前のこと
let name: String = "ドワンゴ太郎" // String 型
let grade: Int = 1 // Int 型

let student: (String, Int) = ("ドワンゴ太郎", 1) // (String, Int) 型（タプル型, ペアになっている( ()　の中に複数の型がある)型のこと）
let add: (Int, Int) -> Int = { a, b in a + b } // (Int, Int) -> Int 型（関数型）

//: ### 型注釈
//: 型注釈: 型を明示的に指定する方法, : に続けて型識別子を記述する
// let student: (String, Int) = ("ドワンゴ太郎", 16) // (String, Int)型に指定する
// let name: String = "ドワンゴ太郎" // String型に指定する
// let age: Int = 16 // Int型に指定する

//: ### 型エイリアス
//: 型エイリアス: 型に別名をつける機能
// typealiasキーワードを使うことで型エイリアスを定義できる
typealias Student = (name: String, grade: Int)
// let student: Student = (name: "ドワンゴ太郎", grade: 1)

//: ### 型推論
//: 型推論: 型注釈を省略した場合にコンパイラが型を推論する機能
// let student = ("ドワンゴ太郎", 16) // (String, Int)型と推論される
// let name = "ドワンゴ太郎 // String型と推論される
// let age = 16 // Int型と推論される

//: ### 型アノテーション
//: 型アノテーション: 型を明示的に記述すること
let secounds: Double = 23

//: ## 意思決定を行う
//: ### 真偽値
//: Swiftでは真偽値は[Bool型](https://developer.apple.com/documentation/swift/bool)で表現される
//: Boolはtrue(真)またはfalse(偽)の値をとる

//: ### 比較演算子
// 演算子    説明
// A < B    A は B より小さい（未満）
// A > B    A は B より大きい（超過）
// A <= B   A は B 以下
// A >= B   A は B 以上
// A == B   A と B は等しい
// A != B   A と B は等しくない

//: 小なり演算子(<)
// < は左辺の値が右辺の値より小さい場合にtrue、それ以外の場合にfalseを返す
// 1 は 2 より小さい(未満)
1 < 2 // --> true

//: 大なり演算子(>)
// > は左辺の値が右辺の値より大きい場合にtrue, それ以外の場合にfalseを返す
// 2 は 1 より大きい(超過)
2 > 1 // --> true

//: 小なりイコール演算子(<=)
// <= は左辺の値が右辺の値より小さいか等しい場合にtrue, それ以外の場合にfalseを返す
// 1 は 2 以下
1 <= 2 // --> true

//: 大なりイコール演算子(>=)
// >= は左辺の値が右辺の値より大きいか等しい場合にtrue, それ以外の場合にfalseを返す
// 2 は 1 以上
2 >= 1 // --> true

//: 等価演算子(==)
// == は左辺の値が右辺の値と等しい場合にtrue, それ以外の場合にfalseを返す
// 1 は 1 と等しい
1 == 1 // --> true

//: 不等価演算子(!=)
// != は左辺の値が右辺の値と等しくない場合にtrue, それ以外の場合にfalseを返す
1 != 2 // --> true

//: ### 論理演算子
// 複数の条件を組み合わせたり、真と偽を反転する時に論理演算子を使用する

// 演算子    説明
// A && B   A と B が真であれば真
// A || B   A か B のどちらか、もしくは両方が真であれば真
// !A       A が偽であれば真

//: 論理積演算子(&&)
// && は左辺の値と右辺の値が真の場合にtrue, それ以外の場合に false を返す
// 左辺が偽の場合, 右辺の値は評価されない -> 短絡評価
let isSunny = true // 晴れているか？
let isWarm = true // 暖かいか？

// true && true
isSunny && isWarm // --> true

//: 論理和演算子(||)
// || は左辺の値か右辺の値が真の場合にtrue, それ以外の場合に false を返す
// 左辺の値が真の場合, 右辺の値は評価されない
// let isSunny = true // 晴れているか？
// let isWarm = false // 暖かいか？

// true || false
isSunny || isWarm // --> true

//: 論理否定演算子(!)
// ! は真偽地を反転させる
// true は false, false は true に変換される
var isModalOpen = false // モーダルが開いているか？

// !false
!isModalOpen // --> true

//: ### if文
// if文: 指定した条件が真の場合、その条件に対応するコードを実行する
// let age = 16

if age < 18 { // if (age < 18) { のように、条件式を()で囲ってもいい
    print("あなたは未成年です。")
}

//: else 節
// 条件が偽の場合に実行するコードを指定できる
if age < 18 {
    print("あなたは未成年です。")
} else {
    print("あなたは成人です。")
}

//: else if 節
// 複数の条件を順番に判定するときに使用する
let weather = "晴れ"

if weather == "晴れ" {
    print("今日は晴れています ☀")
} else if weather == "曇り" {
    print("今日は曇っています ☁")
} else if weather == "雨" {
    print("今日は雨が降っています 🌧")
} else {
    print("今日はどんな天気でしょうか？")
}
