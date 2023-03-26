import Foundation
let defaultString = "If i work, i feel my life. : 01.01.2023"
var reverseArray = Array(defaultString.lowercased())

func priority(_ number: Character) -> Int {
    switch number.lowercased() {
    case "e", "y", "u", "i", "o", "a": return 0
    case "a"..."z": return 1
    case "0"..."9": return 2
    default: return 3
    }
}

print(reverseArray.sorted(by: {
    switch (priority($0), priority($1)) {
    case let(x,y) where x < y: return true
    case let(x,y) where x > y: return false
    default: return $0.lowercased() < $1.lowercased()
    }
}))
