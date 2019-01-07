import UIKit

/*
 
 如果想要获取某个 Swift 类型的 “等效的” 类型编码的话，我们需要现将它转换为 NSNumber (NSNumber 是 NSValue 的子类)，然后获取类型
 
 “对于像其他一些可以转换为 NSValue 的类型，我们也可以通过同样的方式获取类型编码，一般来说这些类型会是某些 struct”
 
 */

let int: Int = 0
let float : Float = 0.0
let double : Double = 0.0

let intNumber : NSNumber = int as NSNumber
let floatNumber : NSNumber = float as NSNumber
let doubleNumber : NSNumber = double as NSNumber

String(validatingUTF8: intNumber.objCType)
String(validatingUTF8: floatNumber.objCType)
String(validatingUTF8: doubleNumber.objCType)

let p = NSValue(cgPoint: CGPoint(x: 3, y: 4))
String(validatingUTF8: p.objCType)
