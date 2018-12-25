import UIKit

/*
 匹配模式
 
 switch 匹配模式
 
 */

//switch 常见用法
let password = "dddd"
switch password {
case "dddd":
    print("密码通过")
default:
    print("验证失败")
}

let num: Int? = nil
switch num {
case nil:
    print("没值")
default:
    print(num!)
}

//范围
let x = 0.5

switch x {
case -1.0...1.0:
    print("在区间")
default:
    print("不在区间")
}

//swift的 switch 就是使用了~= 操作符进行模式匹配
//所有可以在case中使用自定义的匹配(NSRegularExpression)

func ~=(pattern: NSRegularExpression, input: String) -> Bool {
    return pattern.numberOfMatches(in: input,
                                   options: [],
                                   range: NSRange(location: 0, length: input.count)) > 0
}

prefix operator ~/

prefix func ~/(pattern: String) -> NSRegularExpression {
    return try! NSRegularExpression(pattern: pattern, options: NSRegularExpression.Options.caseInsensitive)
}

let mailRegex = ~/"^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"
let siteRegex = ~/"^(https?:\\/\\/)?([\\da-z\\.-]+)\\.([a-z\\.]{2,6})([\\/\\w \\.-]*)*\\/?$"

let contact = ("http://ooooo.com,,", "ddd@xx.com")
switch contact {
case (siteRegex, mailRegex):
    print("同时拥有有效网站和邮箱")
case (_, mailRegex):
    print("只拥有有效邮箱")
case (siteRegex, _):
    print("只拥有有效网站")
default:
    print("什么都不是")
}
