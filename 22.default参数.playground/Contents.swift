import UIKit

/*
 Swift的方法是支持默认参数的
 
 默认参数写得 default， 这是含有默认参数的方法所生成的Swift的调用接口
 
 */

func test(_ testString : String = "test"){
    print(testString)
}

//默认参数隐藏
/*
 func assert(@autoclosure condition: () -> Bool,
                            @autoclosure _ message: () -> String = default,
    file: StaticString = default,
    line: UWord = default)
 */


