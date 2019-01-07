import UIKit

/*
 C 系语言在字符串格式化输出上，需要通过类似 %d，%f 或者在 Objective-C 中的 %@ 这样的格式在指定的位置设定占位符，然后通过参数的方式将实际要输出的内容补充完整
 
 在 Swift 里，我们在输出时一般使用的 print 中是支持字符串插值的，而字符串插值时将直接使用类型的 Streamable，Printable 或者 DebugPrintable 协议
 
 */


extension Double {
    func format(_ f: String) -> String {
        return String(format: "%\(f)f", self)
    }
}

print(2.0198.format(".2"))
