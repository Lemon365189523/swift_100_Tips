import UIKit

/*
 
 Swift 原生容器类型有三种，Array、Dictionary 和 Set
 
 
 */

//正常情况集合中只能放同一类型的元素
let numbers = [1,2,5,3]
//let numbers2 = [1, "2",3]

/*  如果把不同类型放在集合中，需要一些h转换工作 */

enum IntOrString {
    case IntValue(Int)
    case StringValue(String)
}

let mixed : [IntOrString] = [.IntValue(1),.StringValue("two")]


