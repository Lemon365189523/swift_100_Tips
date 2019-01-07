import UIKit

/*
 Cocoa 框架中的大部分 NS 开头的类其实在 CF 中都有对应的类型存在，可以说 NS 只是对 CF 在更高层面的一个封装。比如 NSURL 和它在 CF 中的 CFURLRef 内存结构其实是同样的，而 NSString 则对应着 CFStringRef。
 
 细心的读者可能会发现在 Objective-C 中类型的名字是 CFURLRef，而到了 Swift 里成了 CFURL。CFURLRef 在 Swift 中是被 typealias 到 CFURL 上的，其实不仅是 URL，其他的各类 CF 类型都进行了类似的处理。这主要是为了减少 API 的迷惑：现在这些 CF 类型的行为更接近于 ARC 管理下的对象，因此去掉 Ref 更能表现出这一特性。
 
 
 */


/*
 
NSURL *fileURL = [NSURL URLWithString:@"SomeURL"];
SystemSoundID theSoundID;
//OSStatus AudioServicesCreateSystemSoundID(CFURLRef inFileURL,
//                             SystemSoundID *outSystemSoundID);
OSStatus error = AudioServicesCreateSystemSoundID(
    (__bridge CFURLRef)fileURL,
    &theSoundID);
 
*/


import AudioToolbox

let fileURL = NSURL(string: "SomeURL")
var theSoundID: SystemSoundID = 0

//AudioServicesCreateSystemSoundID(inFileURL: CFURL,
//        _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus
//不用__bridge
AudioServicesCreateSystemSoundID(fileURL!, &theSoundID)

