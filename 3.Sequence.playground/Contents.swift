import UIKit

/*
 Swift的 for in 可以用在实现了Sequence的类型上
 首先需要实现一个IteratorProtocol
 IteratorProtocol 确定循环规则
 
 再实现 Sequence 协议
 Sequence 提供循环方法
 */

class ReverseIterator<T> : IteratorProtocol {
    
    typealias Element = T

    var array : [Element]
    var currentIndex = 0
    
    init(array: [Element]) {
        self.array = array
        currentIndex = array.count - 1
    }
    
    func next() -> T? {
        if currentIndex < 0 {
            return nil
        }else{
            let element = array[currentIndex]
            currentIndex -= 1
            return element
        }
    }

}

struct ReverseSequence<T> : Sequence {
    var array : [T]
    
    init(array : [T]) {
        self.array = array
    }
    
    typealias Iterator = ReverseIterator
    
    func makeIterator() -> Iterator<T> {
        return Iterator(array: self.array)
    }
}

let arr = [1,2,3,4,6]
let sequence = ReverseSequence(array: arr)
for i in sequence{
    print(i)
}

//思考项目那些需要重写一个for in 的地方

//Sequence协议扩展实现了map，filter，reduce

