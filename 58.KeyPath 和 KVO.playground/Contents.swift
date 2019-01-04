import UIKit

/*
 
 通过 KVO 我们可以实现很多松耦合的结构，使代码更加灵活和强大：像通过监听 model 的值来自动更新 UI 的绑定这样的工作，基本都是基于 KVO 来完成的
 
 KVO 仅限于在 NSObject 的子类中，这是可以理解的，因为 KVO 是基于 KVC (Key-Value Coding) 以及动态派发技术实现的，而这些东西都是 Objective-C 运行时的概念
 
  Swift 为了效率，默认禁用了动态派发，因此想用 Swift 来实现 KVO，我们还需要做额外的工作，那就是将想要观测的对象标记为 dynamic 和 @objc。
 
 
 */

class MyClass : NSObject {
    @objc dynamic var date = Date()
}

private var myContext = 0
class Class : NSObject {
    var myObj : MyClass!
    //Swift4.0 新的kvo写法
    var observation : NSKeyValueObservation?
    
    override init() {
        super.init()
        myObj = MyClass()
        print("初始日期 \(myObj.date)")
//        myObj.addObserver(self, forKeyPath: "date", options: .new, context: &myContext)
        observation = myObj.observe(\MyClass.date, options: [.new], changeHandler: { (_, change) in
            if let newDate = change.newValue {
                print("日期发生变化2: \(newDate)")
            }
        })
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.myObj.date = Date()
        }
    }
    
    deinit {
        myObj.removeObserver(self, forKeyPath: "date")
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if let change = change, context == &myContext {
            if let newDate = change[.newKey] as? Date {
                print("日期发生变化: \(newDate)")
            }
        }
    }
    
    
}


let obj = Class()
