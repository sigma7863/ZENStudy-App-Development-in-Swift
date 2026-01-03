// import UIKit

// var greeting = "Hello, playground"

//: ## インスタンス、メソッド、プロパティ
//: ### インスタンス
//: インスタンス: 「型」の個々の値(String, Int, Boolian etc...)
//: リテラル: ソースコードに直接記述された値("aiuoe", 123 etc...)
//: イニシャライザ: インスタンスを作成するための特別なメソッド(初期化みたいなこと, init()など)
import Foundation

// 現在の時間を表す Date 構造体のインスタンスを作成する
let currentDate = Date() // Date.init()とイニシャライザを呼び出している
print(currentDate)

// これらもイニシャライザを呼び出している
String() // --> ""
Int() // --> 0
Bool() // --> false

// 引数に初期化に必要な情報を渡すこともできる
// 1 時間後の時刻を表す Date 構造体のインスタンスを作成する
let oneHourLater = Date(timeIntervalSinceNow: 3600) // init(timeIntervalSinceNow:) → 現在の時刻から指定した秒数後の時刻を表す

//: ### プロパティ
//: プロパティ: クラス、構造体、列挙型に関連づけられたデータのこと

//: ### 格納プロパティ
//: 格納プロパティ: 値を格納するプロパティ(型やインスタンスに属する定数や変数のこと)、クラスと構造体で使用できる
struct Rectangle {
    // 格納プロパティ(Stored Property)
    var width: Double
    var height: Double
}

// インスタンスを作成する
var rectangle = Rectangle(width: 10, height: 20)

// 格納プロパティの値を取得する
print("この長方形の幅は \(rectangle.width)、高さは \(rectangle.height) です。") // --> "この長方形の幅は 10.0、高さは 20.0 です。"

// 格納プロパティの値を設定する
rectangle.width = 30
rectangle.height = 40

//: ### 計算プロパティ
//: 計算プロパティ: 値を計算するプロパティ、クラス、構造体、列挙型で使用できる、他の言語のゲッタ(getter)やゼッタ(setter) (Java, C#, C++ etc...)に相当する
// 正方形を表す構造体
struct Square {
    // 格納プロパティ(Stored Property)
    var sideLength: Double
    
    // 計算プロパティ((Computed Property)
    var area: Double {
        get { // get { /* ... */ }: プロパティの値を返すコードを記述する
            // 正方形の面積を計算して返す
            return sideLength * sideLength
        }
        set(newArea) { // set { /* ... */ }: プロパティに値を設定するコードを記述する
            // 新しい面積から変の長さを計算して設定する
            sideLength = sqrt(newArea)
        }
    }
}

// インスタンスを作成する
var square = Square(sideLength: 10.0)

// 計算プロパティで値を取得する
print("この正方形の面積は \(square.area) です。") // --> "この正方形の面積は100.0です。"

// 計算プロパティで値を設定する
square.area = 144.0

// 格納プロパティの値を取得する
print("この正方形の辺の長さは \(square.sideLength) です。") // --> "この正方形の辺の長さは 12.0 です。"

// 計算プロパティ((読み取り専用))は以下のように簡略化して書くことが多い
struct Rectangle {
    // 格納プロパティ(Stored Property)
    var width: Double
    var height: Double
    
    // 計算プロパティ(Computed Property)
    var area: Double {
        return width * height
    }
}

// インスタンスを作成する
let rectangle = Rectangle(width: 10, height: 20)

// 格納プロパティにアクセスする
print("この長方形の幅は \(rectangle.width)、高さは \(rectangle.height) です。") // --> "この長方形の幅は 10.0、高さは 20.0 です。"

// 計算プロパティいアクセスする
print("この長方形の面積は \(rectangle.area) です。") // --> "この長方形の面積は 200.0 です。"

//: ### メソッド
//: メソッド: クラス、構造体に関連づけられた関数のこと、他のメソッドやプロパティにアクセスして処理する
struct Rectangle {
    // 格納プロパティ(Stored Property)
    var width: Double
    var height: Double
    
    // 計算プロパティ(Computed Property)
    var area: Double {
        return width * height
    }
    
    // インスタンスメソッド(Instance Method)
    func describe() -> String { // describe: 説明する
        return "この長方形の幅は \(width)、高さは \(height)、面積は \(area) です。"
    }
}

// インスタンスを作成する
let rectangle = Rectangle(width: 10, height: 20)

// インスタンスメソッドを呼び出す
print(rectangle.describe()) // "この長方形の幅は 10.0、高さは 20.0、面積は 200.0 です。"

//: ## 配列とループ
//: ### 配列リテラル
// 要素を , で区切って [] で囲むだけで簡単に配列を作成できる
let fruits = [ "apple", "banana", "cherry" ]

//: ### 型
let numbers = [ 1, 2, 3 ]
let strings = [ "a", "b", "c" ]
let mixedTypeArray = [ 1, "a", 2, "b", 3, "c" ] // -> Heterogeneous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional

// [Any] と明示的に型を指定することで、異なる型の要素を混在させることができる
let mixedTypeArray: [Any] = [ 1, "a", 2, "b", 3, "c" ]

// 空の配列を作成するときは型注釈が必要
let emptyArray: [String] = []

//: ### インデックス
// インデックス(配列の要素が何番目かを表す数)を使用して配列の特定の要素にアクセスできる
let fruits = [ "apple", "banana", "cherry" ]
print(fruits[0]) // --> "apple"

// 範囲外のインデックスを指定すると実行時エラーになる
let fruits = [ "apple", "banana", "cherry"]
print(fruits[3])

//: ### カウント
// 配列の要素を知りたいときに count というプロパティを使用する
let fruits = [ "apple", "banana", "cherry" ]
print(fruits.count) // --> 3


