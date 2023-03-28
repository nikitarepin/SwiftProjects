extension Int {
    var isNegative : Bool {
        if self < 0 {
            return true
        } else {
            return false
        }
    }
    var isPositive : Bool {
        if self >= 0 {
            return true
        } else {
            return false
        }
    }
}

let number = 5
print(number.isNegative)
print(number.isPositive)
