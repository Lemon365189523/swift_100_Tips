import UIKit

/*
 在 Swift 中，由于在 enum 中的某一个 case 中我们是可以添加具体值的 (就是 case Some(T) 这样的情况)，因此直接使用 for...in 的方式在语义上是无法表达出所有情况的。不过因为在我们这个特定的情况中并没有带有参数的枚举类型，所以我们可以利用 static 的属性来获取一个可以进行循环的数据结构
 
 */

enum Suit : String {
    case spades = "♠️"
    case hearts = "♥️"
    case clubs = "♣️"
    case diamonds = "♦️"
}

enum Rank: Int, CustomStringConvertible {
    case ace = 1
    case two ,three, four, five, six,seven, eight, nine, ten
    case jack, queen, king
    
    var description: String {
        switch self {
        case .ace:
            return "A"
        case .jack:
            return "J"
        case .queen:
            return "Q"
        case .king:
            return "K"
        default:
            return String(self.rawValue)
        }
    }
}

protocol EnumeratebleEnum {
    static var allValues: [Self] {get}
}

extension Suit: EnumeratebleEnum {
    static var allValues: [Suit] {
        return [.spades, .hearts ,.clubs ,.diamonds]
    }
}

extension Rank: EnumeratebleEnum {
    static var allValues: [Rank] {
        return [.ace, .two, .three,
        .four, .five, .six,
        .seven, .eight, .nine,
        .ten, .jack, .queen, .king]
    }
}

for suit in Suit.allValues {
    for rank in Rank.allValues {
        print("\(suit.rawValue)\(rank)")
    }
}
