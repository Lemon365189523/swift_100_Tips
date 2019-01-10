import UIKit

/*
 言的另一个优点是它是一个开发时的特性，只有在 Debug 编译的时候有效，而在运行时是不被编译执行的，因此断言并不会消耗运行时的性能。
 
 对应 target 的 Build Settings 中，我们在 Swift Compiler - Custom Flags 中的 Other Swift Flags 中添加 -assert-config Debug 来强制启用断言，或者 -assert-config Release 来强制禁用断言
 
 
 */

func convertToKelvin(_ celsius: Double) -> Double {
    assert(celsius >  -273.15, "输入的摄氏度不能低于绝对零度")
    return celsius - -273.15
}

let roomTemperature = convertToKelvin(27)

let tooCold = convertToKelvin(-300)
