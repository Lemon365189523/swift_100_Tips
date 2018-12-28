import UIKit

/*
 
 在涉及到一些数据结构的经典理论和模型 (没错，就是链表，树和图) 时，我们往往会用到嵌套的类型
 
 indirect 枚举递归
 枚举成员的关联值为当前枚举类型时称为递归枚举。那我们可以通过使用indirect修饰枚举变量。indirect修饰整个枚举时,所有成员均可递归(也可不递归)
 
 */


//利用枚举实现单向连

indirect enum LinkedList<Element: Comparable> {
    case empty
    case node(Element, LinkedList<Element>)
}

//class Node<T> {
//    let value : T
//    let next : Node<T>
//}
