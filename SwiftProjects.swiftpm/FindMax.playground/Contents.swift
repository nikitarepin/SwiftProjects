func findMax(_ array: [Character],_ checkNumber:(_ number1: Character?,_ number2: Character) -> Bool) -> Character{
    var optInt: Character?
    for element in array {
        if checkNumber(optInt, element) {
            optInt = element
        }
    }
    return(optInt!)
}

let array = Array("abcdz")

print("Min element = ", findMax(array, {number1, number2 in
    if number1 != nil {
        return number1! > number2
    } else if number1 == nil {
        return true
    }
    return false
}))

print("Max element = ", findMax(array, {number1, number2 in
    if number1 != nil {
        return number1! < number2
    } else if number1 == nil {
        return true
    }
    return false
}))
