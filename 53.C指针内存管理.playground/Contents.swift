import UIKit

/*
 C 指针在 Swift 中被冠名以 unsafe 的另一个原因是无法对其进行自动的内存管理。
 
 deallocate 与 deinitialize 应该要和 allocate 与 initialize 成对出现，如果不是你创建的指针，那么一般来说你就不需要去释放它。

 指针的内存申请也可以使用 malloc 或者 calloc 来完成，这种情况下在释放时我们需要对应使用 free 而不是 deallocate
 
 
 */
