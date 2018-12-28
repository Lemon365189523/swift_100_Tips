import UIKit

/*
 
 可选值里有可选值  ??
 
 */

var string : String? = "string"
var anotherString : String?? = string
var literalOptional : String?? = "string"

print(anotherString)
print(literalOptional)

var aNil : String? = nil
anotherString = aNil
literalOptional = nil

if anotherString != nil {
    print("anotherNil")// 只打印这个
}

if literalOptional != nil {
    print("literalNil")
}

