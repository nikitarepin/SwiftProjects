extension Int {
    var isNegative : Bool {
        return self < 0
    }
    var isPositive : Bool {
        return self >= 0
    }
    var isTrue : Bool {
        return self != 0
    }
    func countNumber() -> Int {
        let numberString = String(self)
        return numberString.count
    }
    subscript (number : Int) -> Int? {
        let numberString = String(self)
        if number >= numberString.count {
            return nil
        }
        var index = 0
        for figure in numberString {
            if index == numberString.count - number - 1 {
                return figure.wholeNumberValue
            }
            index += 1
        }
        return nil
    }
}


// My tests:
let number = 512
print(number.isNegative)
print(number.isPositive)
print(number.isTrue)
print(number.countNumber())
if var answer = number[2] {
    print("Answer is \(answer)")
} else {
    print("String shorter than ur number")
}

