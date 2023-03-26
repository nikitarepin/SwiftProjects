// create gameField
var field = [String:String]()
for i in 1...8 {
    for j in 1...8 {
        field[String(i) + String(j)] = "0"
    }
}

func findMy(dict: [String:String], part: String) -> Bool {
    for square in dict {
        if square.value == part {
            return true
        }
    }
    return false
}

func createShip(x: inout Int, y: inout Int, direction: Direction, size: Size, field: inout [String:String]) -> [String:String] {
    switch direction {

    case .Up:
        if y + size.rawValue <= 8 {
            for _ in 1...size.rawValue {
                field[String(x) + String(y)] = "1"
                y += 1
            }
        }

    case .Down :
        if y - size.rawValue > 0 {
            for _ in 1...size.rawValue {
                field[String(x) + String(y)] = "1"
                y -= 1
        }
    }

    case .Left:
        if x - size.rawValue > 0 {
            for _ in 1...size.rawValue {
                field[String(x) + String(y)] = "1"
                x -= 1
            }
        }

    case .Right:
        if x + size.rawValue <= 8 {
            for _ in 1...size.rawValue {
                field[String(x) + String(y)] = "1"
                x += 1
            }
        }
    }
    return field
}

struct Ship {
    var x: Int
    var y: Int


    init(x: Int, y: Int, direction: Direction, size: Size) {
        self.x =  x > 0 && x <= 8 ? x : 1
        self.y = y > 0 && y <= 8 ? y : 1
        var newX = self.x
        var newY = self.y
        field = createShip(x: &newX, y: &newY, direction: direction, size: size, field: &field)
        }

    mutating func shootByX(x: Int, y: Int){
        if x >= 1 && x <= 8 && y >= 1 && y <= 8 {
            if field[String(x) + String(y)] == "1" {
                field[String(x) + String(y)] = "0"
                if findMy(dict: field, part: "1") {
                    print("u got it!")
                } else {
                    print("ship was sunk")
                }
            } else {
                print("u missed")
            }
        } else {
            print("not area")
        }
    }
}

enum Direction {
    case Up
    case Down
    case Left
    case Right
}

enum Size: Int {
    case one = 1
    case two = 2
    case three = 3
    case four = 4
}

var ship = Ship(x: 2, y: 3, direction: .Up, size: .three)

ship.shootByX(x: 2, y: 3)
ship.shootByX(x: 1, y: 1)

ship.shootByX(x: 2, y: 4)
ship.shootByX(x: 2, y: 5)
