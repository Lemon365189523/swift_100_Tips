import UIKit

/*
 ImplicitlyUnwrappedOptional (!)
 
 隐式解包的Optional本质上与普通的Optional值并没有任何不同，只是在对这类变量的成员或方法z进行访问的时候，编译器会自动为我们在后面插入解包符号！
 
 ps:但是需要牢记在心的是，隐式解包不意味着 “这个变量不会是 nil，你可以放心使用” 这种暗示，只能说 Swift 通过这个特性给了我们一种简便但是危险的使用方式罢了。
 
    少用这样的隐式解包的Optional为好，很多时候多写一个Optional Binding就可以规避掉不少应用奔溃的风险
 
 */

var str : String! = "string"
print(str!)
print(str)

