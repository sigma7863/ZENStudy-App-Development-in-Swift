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
// 型識別子: 型を示す一意の名前のこと
let name: String = "ドワンゴ太郎" // String 型
let grade: Int = 1 // Int 型

let student: (String, Int) = ("ドワンゴ太郎", 1) // (String, Int) 型（タプル型, ペアになっている( ()　の中に複数の型がある)型のこと）
let add: (Int, Int) -> Int = { a, b in a + b } // (Int, Int) -> Int 型（関数型）

//: ### 型注釈
// 型注釈: 型を明示的に指定する方法, : に続けて型識別子を記述する
// let student: (String, Int) = ("ドワンゴ太郎", 16) // (String, Int)型に指定する
// let name: String = "ドワンゴ太郎" // String型に指定する
// let age: Int = 16 // Int型に指定する

//: ### 型エイリアス
