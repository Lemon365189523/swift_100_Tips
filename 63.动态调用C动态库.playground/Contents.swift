import UIKit

/*
 
 在 Swift 中直接使用 C 代码或者 C 的库是不可能的。
 
 在 Swift 中无法直接写 #import <CommonCrypto/CommonCrypto.h> 这样的代码，这些动态库暂时也没有 module 化，因此快捷的方法就只有借助于通过 Objective-C 来进行调用了。因为 Swift 是可以通过 {product-module-name}-Bridging-Header.h 来调用 Objective-C 代码的，于是 C 作为 Objective-C 的子集，自然也一并被解决了。
 
 */

