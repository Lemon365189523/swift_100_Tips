import UIKit



class MyManager {

    class var share : MyManager {
        return sharedInstance
    }
    //最简单的单例
    //在初始化类变量的时候，Apple将会把这个初始化包装在一次 swift_once_block_invoke（类似dispathch_once）中，以保证它的唯一性
    static let shared = MyManager()
    //私有化init方法，让项目其他地方不能通过init方法来生成MyManager实例
    fileprivate init(){}
}

private let sharedInstance = MyManager()



