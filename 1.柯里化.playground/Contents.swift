import UIKit

//定义：讲方法进行柯里化，就是把接受多个参数的方法进行一些变形，使其更加灵活

//普通简单加1函数 但变化有限只能加1
func addOne(num: Int) -> Int {
    return num + 1
}

func addTo(_ adder:Int) -> (Int) -> Int {
    return { num in
        return num + adder
    }
}

let addTwo = addTo(2)
let result = addTwo(6)

//使用柯里化改造target-action
protocol TargetAction{
    func performAction()
}

//保存 Target 和 Action的 模型
struct TargetActionWrapper<T: AnyObject>: TargetAction {
    
    typealias Action = (T) -> () -> ()
    
    weak var targer: T?
    
    let action: Action
    
    func performAction() {
        if let t = targer {
            action(t)
        }
    }
}

enum ControlEvent {
    case TouchUpInside
    case ValueChanged
}

class Control {
    //用数组保存响应目标
    var actions = [ControlEvent : TargetAction]()
    
    func setTarget<T: AnyObject>(target: T, action:@escaping (T) -> () -> (), controlEvent: ControlEvent){
        actions[controlEvent] = TargetActionWrapper(targer: target, action: action)
    }
    
    func removeTargetForControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionForControlEvent(controlEvent: ControlEvent) {
        if let action = actions[controlEvent]{
            action.performAction()
        }
    }
    
}

class MyViewController {
    let button = Control()
    
    func viewDidLoad() {
        button.setTarget(target: self, action: MyViewController.onButtonTap, controlEvent: .TouchUpInside)
    }
    
    func onButtonTap() {
        print("Button was tapped")
    }
    
    func clickButton() {
        button.performActionForControlEvent(controlEvent: .TouchUpInside)
    }
}

//柯里化是一种量产相似方法的好办法，可以通过柯里化一个方法模板来避免写重复代码。
//思考： 实际开发中那些地方用到柯里化
//https://www.jianshu.com/p/6eaacadafa1a
