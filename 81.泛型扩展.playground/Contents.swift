import UIKit

/*
 Swift 对于泛型的支持使得我们可以避免为类似的功能多次书写重复的代码，这是一种很好的简化。而对于泛型类型，我们也可以使用 extension 为泛型类型添加新的方法。
 
 */

extension Array {
    var random : Element? {
        return self.count != 0 ? self[Int(arc4random_uniform(UInt32(self.count)))] : nil
    }
    
    func appendRandomDescription<U: CustomStringConvertible>(_ input: U) -> String{
        
        if let element = self.random {
            return "\(element) - " + input.description
        }else{
            return "empty array"
        }
        
    }
}

let languages = ["Swift", "Objective-C", "C++", "Java"]
print(languages.random)

let ranks = [1,2,3,5]
ranks.random

languages.appendRandomDescription(ranks.random!)


