import UIKit

/*
 
 C 系语言中在方法内部我们是可以任意添加成对的大括号 {} 来限定代码的作用范围的。这么做一般来说有两个好处，首先是超过作用域后里面的临时变量就将失效，这不仅可以使方法内的命名更加容易，也使得那些不被需要的引用的回收提前进行了，可以稍微提高一些代码的效率；另外，在合适的位置插入括号也利于方法的梳理，对于那些不太方便提取为一个单独方法，但是又应该和当前方法内的其他部分进行一些区分的代码，使用大括号可以将这样的结构进行一个相对自然的划分。
 

 */

func local(_ closure: ()->()) {
    closure()
}

func loadView(){
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    local {
        let titleLabel = UILabel()
        view.addSubview(titleLabel)
    }
    
    local {
        let button = UIButton()
        view.addSubview(button)
    }
    //都也能起局部作用域作用
    do {
        
    }
    
}

