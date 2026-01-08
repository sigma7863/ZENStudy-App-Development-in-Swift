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
// direction = .north // CommpassPoint.northだけど、型が明確なため、.north と省略できる

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

// weather が snowy の場合、関連値が snowDepth に束縛される
if case let .snowy(snowDepth) = weather { // snowDepthは snowy(30) の (30) 変数名である
    print("積雪量は \(snowDepth) cm です。") // --> "積雪量は 30 cm です。"
}

//: Raw Values
// ケースに固定された値を関連付けることができる
// Raw Value の型は文字、文字列、整数、浮動小数点数のいずれかである必要がある
// また、すべてのケースが同じ型の値を持ち、それぞれの値は一意である必要がある
enum EscapeSequwnce: Character { // Character 型: 1文字の型
    case tab = "\t" // タブ文字は空白(tabキーを押した時の空白)の文字のこと
    case lineFeed = "\n"
    case carriageReturn = "\r" // carriage: 馬車, 台車, 身のこなし
}

// Raw Value は rawValue プロパティで取得できる
let tab = EscapeSequwnce.tab
tab.rawValue // --> "\t"

// init(rawValue:) を使用して、指定した Raw Value からインスタンスを作成することができる
// init(rawValue:) は失敗可能なイニシャライザであり、Raw Value が存在しない場合は nil が返る
let lineFeed = EscapeSequwnce(rawValue: "\n")

// Raw Value が整数や文字列の場合、明示的に割り当てなくても自動的に割り当てられる
// 整数の場合、最初のケースを指定しなければ 0 から始まる連番の Raw Value になる
// つまり、前のケースの数値をインクリメントした数値が割り当てられていく

// ここでは ace に 1 を指定しているため、1 から始まる連番が割り当てられる
enum Rank: Int {
    case ace = 1, two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
}

Rank.ace.rawValue   // --> 1
Rank.two.rawValue   // --> 2
Rank.three.rawValue // --> 3
// ...
Rank.jack.rawValue  // --> 11
Rank.queen.rawValue // --> 12
Rank.king.rawValue  // --> 13

// 文字列の場合、ケースの名前が Raw Value になる
enum CompassPoint: String {
    case north, south, east, west
    
    // 列挙型はプロパティやメソッドを持つことができる
    // ただし、列挙型は格納プロパティを持つことはできない
    var description: String {
        // self はインスタンス自身を表す
        return "方角は \(self.rawValue) です。"
    }
    
    // Self は型自身を表す
    func trunRight() -> Self {
        return switch self {
            case .north: .east
            case .south: .west
            case .east: .south
            case .west: .north
        }
    }
}

CompassPoint.north.rawValue // --> "north"
CompassPoint.south.rawValue // --> "south"
CompassPoint.east.rawValue  // --> "east"
CompassPoint.west.rawValue  // --> "west"

let north = CompassPoint.north
north.description // --> "方角は north です。"

let east = north.trunRight()
east.description // --> "方角は east です。"

