struct Room {
    var height : Int
    var width : Int
}

struct Person {
    var x : Int
    var y : Int
    
    mutating func moveDirection(direction : Direction, Steps steps: Int, Room room: Room) {
        switch direction {
        case .Up :
            y = y + steps <= room.height ? y + steps : y
        case .Down :
            y = y - steps > 0 ? y - steps : y
        case .Left :
            x = x - steps > 0 ? x - steps : x
        case .Right :
            x = x + steps <= room.width ? x + steps : x
        }
    }
}

struct Box {
    var x : Int
    var y : Int
    
    mutating func movingSteps(steps: Int, direction: Direction, person: inout Person, room: Room) {
        switch direction {
        case .Up:
            if y - 1 == person.y && y + steps <= room.height {
                y += steps
                person.y += steps
            }
        case .Down:
            if y + 1 == person.y && y - steps > 0 {
                y -= steps
                person.y -= steps
            }
        case .Right:
            if x - 1 == person.x && x + steps <= room.width {
                x += steps
                person.x += steps
            }
        case .Left:
            if x + 1 == person.x && x - steps > 0 {
                x -= steps
                person.x -= steps
            }
        }
    }
}

enum Direction {
    case Up
    case Down
    case Left
    case Right
}


func printRoom(room : Room, person: Person, box: Box) {
    let human = room.height - person.y + 1
    let square = room.height - box.y + 1
    for height in 1...room.height {
        for width in 1...room.width {
            if height == human && width == person.x {
                print("\u{1F60E}", terminator: "")
            } else if height == square && width == box.x {
                print("\u{1F4E6}", terminator: "")
            } else {
                print("\u{1F3FD}", terminator: "")
            }
        }
        print()
    }
}



// init room, human and box
var first_room = Room(height: 10, width: 5)
var person = Person(x: 2, y: 3)
var box = Box(x: 3, y: 😍
printRoom(room: first_room, person: person, box: box)
print("-------------")
person.moveDirection(direction: Direction.Up, Steps: 1, Room: first_room)
printRoom(room: first_room, person: person, box: box)
print("-------------")
person.moveDirection(direction: Direction.Up, Steps: 10, Room: first_room)
printRoom(room: first_room, person: person, box: box)
print("-------------")
person.moveDirection(direction: Direction.Right, Steps: 1, Room: first_room)
person.moveDirection(direction: Direction.Up, Steps: 3, Room: first_room )
printRoom(room: first_room, person: person, box: box)
print("-------------")
box.movingSteps(steps: 2, direction: Direction.Up, person: &person, room: first_room)
printRoom(room: first_room, person: person, box: box)
