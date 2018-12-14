import UIKit

//使用元祖做交换，优点在不适用额外空间就完成交换
func swap<T>(a: inout T,b: inout T) {
    (a, b) = (b, a)
}

//在OC中 CGRectDivide (切割区域方法)需要传入指针的方式来填充需要的部分
//CGRectDivide(rect , &small, &large, 20, CGRectMinXEdge)

let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
let (small, large) = rect.divided(atDistance: 20, from: .minXEdge)

print(small)
print(large)
