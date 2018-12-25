import UIKit

/*
 NSRegularExpression
 */

struct RegexHelper {
    let regex : NSRegularExpression
    
    init(_ pattern : String) throws {
        try regex = NSRegularExpression(pattern: pattern, options: .caseInsensitive)
    }
    
    func match(_ input: String) -> Bool {
        let matches = regex.matches(in: input, options: [], range: NSMakeRange(0, input.utf16.count))
        return matches.count > 0
    }
}

let mailPattern = "^([a-z0-9_\\.-]+)@([\\da-z\\.-]+)\\.([a-z\\.]{2,6})$"

var matchter : RegexHelper!
do {
    matchter = try RegexHelper(mailPattern)
}

let maybeMailAddress = "365189523@qq.com"
if matchter.match(maybeMailAddress) {
    print("有效")
}
