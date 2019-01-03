import UIKit

/*
 
 尽可能使用原生的String类型
 
 原因：
    1.String和NSString有着良好的互相转换的特性，但是现在Cocoa所有API都接受和返回String类型
 
    2.在Swift中String是struct，相比起NSObject的NSString类来说，更切合字符串的不变特性
 
    3.因为String实现Collection这样的协议，因此有些Swift的语法特性只能String才能使用（例如for in）
 
 使用String唯一一个比较f麻烦的地方在于它和Range的配合。
 
 */

let string = "abcdefghijklmnopqrestuvwxyz"
if string.contains("fh") {
    print("包含 fh")
}

//不使用Range的话，先转NSString再替换
let nsRange = NSMakeRange(1, 4)
let str = (string as NSString).replacingCharacters(in: nsRange, with: "ssss")
print(str)
