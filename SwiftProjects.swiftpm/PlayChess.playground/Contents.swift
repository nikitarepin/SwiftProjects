// func for find index of the letter on chess desk
func findIndex(letter: Character) -> Int {
    let string = "ABCDEFGH"
    var index = 0
    for char in string {
        if char == letter{
            return index
        }
        index += 1
    }
    return index
}

// enum for creating chess figures
enum createFigure {
    case figure(name: Name, color: Color, letter: Character, number: Int)
    
    enum Name: String {
        case pawn = "Pawn"
        case queen = "Queen"
        case king = "King"
    }
    
    enum Color: String {
        case black = "Black"
        case white = "White"
    }
}

// create figures and append their in the array
let chessFigures = [
createFigure.figure(name: .king, color: .black, letter: "H", number: 8),
createFigure.figure(name: .pawn, color: .black, letter: "A", number: 8),
createFigure.figure(name: .pawn, color: .black, letter: "C", number: 3),
createFigure.figure(name: .pawn, color: .black, letter: "E", number: 4),

createFigure.figure(name: .king, color: .white, letter: "B", number: 8),
createFigure.figure(name: .queen, color: .white, letter: "F", number: 5),
createFigure.figure(name: .pawn, color: .white, letter: "A", number: 2),
createFigure.figure(name: .pawn, color: .white, letter: "B", number: 3)
]

// create matrix
var desk = Array<Array<Character>>()

for _ in 0...7 {
    desk.append(Array(repeating: "0", count: 8))
}

// append figures on the desk
for figure in chessFigures {
    switch figure {
    case .figure(let name, let color, let letter, let number) where name.rawValue == "King" && color.rawValue == "Black":
        var lettetIndex = findIndex(letter: letter)
        desk[lettetIndex][number - 1] = "\u{265A}"
    case .figure(let name, let color, let letter, let number) where name.rawValue == "Pawn" && color.rawValue == "Black":
        var lettetIndex = findIndex(letter: letter)
        desk[lettetIndex][number - 1] = "\u{265F}"
    case .figure(let name, let color, let letter, let number) where name.rawValue == "King" && color.rawValue == "White":
        var lettetIndex = findIndex(letter: letter)
        desk[lettetIndex][number - 1] = "\u{2654}"
    case .figure(let name, let color, let letter, let number) where name.rawValue == "Qeen" && color.rawValue == "White":
        var lettetIndex = findIndex(letter: letter)
        desk[lettetIndex][number - 1] = "\u{2655}"
    case .figure(let name, let color, let letter, let number) where name.rawValue == "Pawn" && color.rawValue == "White":
        var lettetIndex = findIndex(letter: letter)
        desk[lettetIndex][number - 1] = "\u{2659}"
    default: break
    }
}

func drawDesk(_ desk: Array<Array<Character>>) {
    for column in 1...8 {
        for rown in 1...8 {
            if desk[rown - 1][8 - column] != "0" {
                print(desk[rown - 1][8 - column], terminator: " ")
            } else if 8 - column % 2 != 8 - rown % 2 {
                print("\u{25FB}", terminator: " ")
            } else {
                print("\u{25A0}", terminator: " ")
            }
        }
        print()
    }
}

// func for moving figures
func moveFigure(_ figur: String, _ colorF: String, _ position: (Character, Int), _ figures: [createFigure],
                _ desk: inout Array<Array<Character>> ) {
    for element in figures {
        switch element {
        case .figure(let name, let color, let letter, let number) where name.rawValue == figur && color.rawValue == colorF:
            let letterIndex = findIndex(letter: letter)
            let copySquare = desk[letterIndex][number - 1]
            if letterIndex+1 % 2 == number % 2{
                desk[letterIndex][number - 1] = "\u{25A0}"
            } else {
                desk[letterIndex][number - 1] = "\u{25FB}"
            }
            let newLetter = findIndex(letter: position.0)
            let newNumber = position.1
            desk[newLetter][newNumber-1] = copySquare
        default: break
        }
    }
    drawDesk(desk)
}

moveFigure("King", "Black", ("A", 1), chessFigures, &desk)
