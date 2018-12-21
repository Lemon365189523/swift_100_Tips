import UIKit

var arr = [1,2,3]

print(arr[1])

var dic = ["key1" : "value1" , "key2": "value2"]

dic["ddd"]//nil

dic["key1"]

//可以自定义下标
//extension Array {
//    subscript(input: [Int]) -> ArraySlice<Element>{
//        get {
//            var result = ArraySlice<Element>()
//            for i in input{
//                assert(i < self.count, "Index out of range")
//                result.append(self[i])
//            }
//            return result
//        }
//
//        set{
//            for (index , i) in input.enumerated() {
//                assert(i < self.count, "Index out of range")
//                self[i] = newValue[index]
//            }
//        }
//    }
//
//}

var array = [1,2,3,4,5]

//练习
extension Array {
    //定义下标方法
    subscript(input : Int...) -> ArraySlice<Element> {
        get {
            var result = ArraySlice<Element>()
            for i in input{
                assert(i < self.count, "Index out of range")
                result.append(self[i])
            }
            return result
        }
        
        set{
            for (index , i) in input.enumerated() {
                assert(i < self.count, "Index out of range")
                self[i] = newValue[index]
            }
        }
    }
}

//array[1,2,3]



