import UIKit

/*
 typealias的作用？
 
 typealias 是用来为已经存在的类型重新定义名字的，通过命名，可以使代码变得更加清晰
 
 */

typealias Location = CGPoint
typealias Distance = Double

func distance(form location: Location, to anotherLocation : Location) -> Distance{
    let dx = Distance(location.x - anotherLocation.x)
    let dy = Distance(location.y - anotherLocation.y)
    
    return sqrt(dx * dx + dy * dy)
}

let origin : Location = Location(x: 0, y: 0)
let point : Location = Location(x: 1, y: 1)

let d : Distance = distance(form: origin, to: point)

print(d)

//typealias 中使用泛型
class Person<T>{}

typealias Worker<T> = Person<T>

//或者 是确定了类型的
typealias StudentId = String
typealias Student = Person<StudentId>


//另一场景 用在多个协议的组合

typealias Table = UITabBarDelegate & UITableViewDataSource
