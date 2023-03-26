import Foundation
func stringRedactor(_ string: inout String) -> String {

    let numbersCollection = ["zero","one","two","three","four","five","six","seven","eight","nine"]

    for char in string {
        switch char {
        case ",",".",":","?","-","_",";":
            string = string.replacingOccurrences(of: String(char), with: " ")
        case "e","y","u","i","o","a":
            string = string.replacingOccurrences(of: String(char), with: String(char.uppercased()))
        case "Q","W","R","T","P","S","D","F","G","H","K","L","Z","X","C","V","B","N","M":
            string = string.replacingOccurrences(of: String(char), with: String(char.lowercased()))
        case "0","1","2","3","4","5","6","7","8","9":
            string = string.replacingOccurrences(of: String(char), with: String(numbersCollection[(Int(String(char))!)]))
        default: break
        }

    }
    return string
}
var s = "How are you? 123"
print(stringRedactor(&s))
