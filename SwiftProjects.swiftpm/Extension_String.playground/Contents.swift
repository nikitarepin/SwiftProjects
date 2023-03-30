extension String {
    subscript (range : Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: range.lowerBound)
        let end = self.index(self.startIndex, offsetBy: range.upperBound)
        return String(self[start...end])
    }
    subscript (index : Int) -> Character {
        return self[self.index(self.startIndex, offsetBy: index)]
    }
}

var new = "Hello world!"
print(new[2..<10])
print(new[3])
