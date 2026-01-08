// import UIKit

// var greeting = "Hello, playground"

//: ## 列挙型とSwitch文
//: ### 列挙型
// 列挙型: 関連する選択肢のグループを定義するための型のこと
// 天気や曜日など、限られた選択肢から1つを選ぶことができる値を表現するのに適している
enum DayOfWeek { // enum: enumeration: 列挙, 数え上げること
    case monday    // 月曜日
    case tuesday   // 火曜日
    case wednesday // 水曜日
    case thursday  // 木曜日
    case friday    // 金曜日
    case saturday  // 土曜日
    case sunday    // 日曜日
}
// 列挙型の各選択肢は case キーワードを使用して定義する, 各選択肢は "列挙ケース" と呼ばれている
// ケースの識別子は単数系にする

// 複数のケースを , で区切って1行で定義することもできる
// enum DayOfWeek {
    // case monday, tuesday, wednesday, thursday, friday // 平日
    // case saturday, sunday // 休日
// }

// 上のように列挙型を定義すると、以下のように使用できる
// インスタンスを取得する
let day = DayOfWeek.monday

//: ### 列挙型と型推論
// Swiftは型推論が非常に強力なため、型が明確な場合は型を省略できる
// var direction: CompassPoint // direction: 方向、方角, CompassPoint: (羅針盤の)方位
// direction = .north

//: ### Associated Values: 関連値 Associated: 関連する
// ケースに任意の型の値を関連付けることができる
// これにより、ケースに追加情報を格納して、より複雑なデータを表現することができる
enum Weather {
    case sunny      // 晴れ
    case cloudy     // 曇り
    case snowy(Int) // 雪(積雪量)
    case rainy(Int) // 雨(降水確率)
}

let weather = Weather.snowy(30)
