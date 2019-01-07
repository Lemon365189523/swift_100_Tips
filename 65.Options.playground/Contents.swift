import UIKit

/*
 
 在 Swift 中，对于原来的枚举类型 NS_ENUM 我们有新的 enum 类型来对应。但是原来的 NS_OPTIONS 在 Swift 里显然没有枚举类型那样重要，并没有直接的原生类型来进行定义。原来的 Option 值现在被映射为了满足 OptionSetType 协议的 struct 类型，以及一组静态的 get 属性：
 
 要实现一个 Options 的 struct 的话，可以参照已有的写法建立类并实现 OptionSetType

 
 */

struct MyOption: OptionSet {
    let rawValue: UInt
    static let none = MyOption(rawValue: 0)
    static let option1 = MyOption(rawValue: 1)
    static let option2 = MyOption(rawValue: 1 << 1)
}
