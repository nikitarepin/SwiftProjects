enum chessFigure {
    case figure(name: Name, color: Color, letterSquare: String, numberSquare: Int)
    
    enum Color {
        case Black
        case White
    }
    
    enum Name : String {
        case Queen = "Queen"
        case King = "King"
        case Pawn = "Pawn"
    }
}

var figureArray = [(chessFigure.figure(name: .King, color: .Black, letterSquare: "H", numberSquare: 8)),
(chessFigure.figure(name: .King, color: .White, letterSquare: "F", numberSquare: 6)),
(chessFigure.figure(name: .Queen, color: .White, letterSquare: "G", numberSquare: 8)),
(chessFigure.figure(name: .Pawn, color: .White, letterSquare: "F", numberSquare: 7))]

func takeArray(_ array: [chessFigure]) {
    for figure in figureArray {
        printFigure(figure)
    }
}

func printFigure(_ figure: chessFigure) {
    switch figure {
    case .figure(let name, _, _, _): print(name.rawValue, terminator: " ")
    }
    
    switch figure {
    case .figure(_, let color, _, _) where color == .White: print("White", terminator: " ")
    default: print("Black", terminator: " ")
    }
    
    switch figure {
    case .figure(_, _, let letter, let number): print(letter, number, terminator: " ")
    }
    print()
}

takeArray(figureArray)
