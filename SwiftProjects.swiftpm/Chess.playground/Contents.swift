func colorChess (squareLetter: Character, squareNumber: Int) -> String {
    let evenLetters = "BDFH"
    var numberedLetter = 1
    
    if evenLetters.contains(squareLetter){
        numberedLetter = 2
    }

    return numberedLetter % 2 == squareNumber % 2 ? "Black":"White"
}

let sqareColor = colorChess(squareLetter: "A", squareNumber: 1)
print(sqareColor)
