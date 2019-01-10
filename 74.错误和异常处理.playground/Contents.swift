import UIKit


/*
 
 在 Objective-C 开发中，异常往往是由程序员的错误导致的 app 无法继续运行，比如我们向一个无法响应某个消息的 NSObject 对象发送了这个消息，会得到 NSInvalidArgumentException 的异常，并告诉我们 "unrecognized selector sent to instance"；比如我们使用一个超过数组元素数量的下标来试图访问 NSArray 的元素时，会得到 NSRangeException。类似由于这样所导致的程序无法运行的问题应该在开发阶段就被全部解决，而不应当出现在实际的产品中。相对来说，由 NSError 代表的错误更多地是指那些“合理的”，在用户使用 app 中可能遇到的情况：比如登陆时用户名密码验证不匹配，或者试图从某个文件中读取数据生成 NSData 对象时发生了问题 (比如文件被意外修改了) 等等。
 
 Swift 现在的异常机制也并不是十全十美的。最大的问题是类型安全，不借助于文档的话，我们现在是无法从代码中直接得知所抛出的异常的类型的
 
 另一个限制是对于非同步的 API 来说，抛出异常是不可用的 -- 异常只是一个同步方法专用的处理机制。
 
 try? 会返回一个 Optional 值：如果运行成功，没有抛出错误的话，它会包含这条语句的返回值，否则将为 nil。不过如果你用了 try? 的话，就意味着你无视了错误的具体类型
 
 简单理解的话你可以将 rethrows 看做是 throws 的“子类”，rethrows 的方法可以用来重载那些被标为 throws 的方法或者参数，或者用来满足被标为 throws 的协议，但是反过来不行。如果你拿不准要怎么使用的话，就先记住你在要 throws 另一个 throws 时，应该将前者改为 rethrows。
 
 
 */

enum LoginError : Error {
    case UserNotFound, UserPasswordNotMatch
}

let users = ["lemon": "12345","fan":"12333"]

func login(user: String, password: String) throws {
    if !users.keys.contains(user) {
        throw LoginError.UserNotFound
    }
    if users[user] != password{
        throw LoginError.UserPasswordNotMatch
    }
    print("成功登陆")
}

do {
    try login(user: "dd", password: "12345")
}catch LoginError.UserNotFound{
    print("没有这用户")
}catch LoginError.UserPasswordNotMatch{
    print("密码错误")
}

enum Result<T> {
    case Success(T)
    case Failure(NSError)
}

enum E: Error{
    case Negative
}

func menthodThrowsWhenPassingNegative(number: Int) throws -> Int{
    if number < 0 {
        throw E.Negative
    }
    return number
}

if let num = try? menthodThrowsWhenPassingNegative(number: 100) {
    print(num)
}else{
    print("failed")
}
