import UIKit

//苹果系统API中很多初始化方法都能返回nil
let url = NSURL.init(string: "http://swww")

print(url)

/*

 我们可以在 init 声明时在其后加上一个 ? 或者 ! 来表示初始化失败时可能返回 nil

 */

extension Int{
    init?(fromString: String){
        self = 0
        //位数
        var digit = fromString.count - 1
        for c in fromString{
            var number = 0
            if  let n = Int(String(c)) {
                number = n
            }else{
                switch c {
                case "一":number = 1
                case "二":number = 2
                default:
                    return nil
                }
            }
            self = self + number * Int(pow(10, Double(digit)))
            digit = digit - 1
        }
    }
}

let num1 = Int(fromString: "12")

let num2 = Int(fromString: "一二")

let num3 = Int(fromString: "ddd")
