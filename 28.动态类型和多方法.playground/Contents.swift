import UIKit

/*
 Swift 中我们虽然可以同过 dynamicType 来获取一个对象的动态类型
 
 Swift 现在却是不支持多方法的，也就是说，不能根据对象在动态时的类型进行合适的重载方法调用
 
 */

class Pet{}
class Cat: Pet{}
class Dog: Pet{}

func printPet(_ pet: Pet){
    print("Pet")
}

func printPet(_ cat: Cat){
    print("Cat")
}

func printPet(_ dog: Dog){
    print("Dog")
}

//通过参数寻找合适的方法
printPet(Cat())
printPet(Dog())
printPet(Pet())

//Swift 默认情况下是不采用动态派发的，因此方法的调用只能在编译时决定。
func printThem(_ pet: Pet, _ cat: Cat){
    printPet(pet)
    printPet(cat)
}

printThem(Dog(), Cat())
//使用Dog 不能找到最合适的方法
