import UIKit

/*
 Apple 为了 iOS 平台的安全性考虑，是不允许动态链接非系统的框架的。因此在 app 开发中我们所使用的第三方框架如果是以库文件的方式提供的话，一定都是需要链接并打包进最后的二进制可执行文件中的静态库
 
 要特别指出，虽然和 Apple 的框架的后缀名一样是 .framework，使用方式也类似，但是这些第三方框架都是实实在在的静态库，每个 app 需要在编译的时候进行独立地链接。
 
 就算你没有计划开发扩展，尝试将一部分代码分离到框架中也是有助于我们梳理项目的架构的
 
 通过 lipo 命令将适用于多个架构的二进制文件进行合并，以得到可以在模拟器和实际设备上通用的二进制文件
 lipo -create -output HelloKit \
 Release-iphoneos/HelloKit.framework/HelloKit \
 Release-iphonesimulator/HelloKit.framework/HelloKit
 
 
 */
