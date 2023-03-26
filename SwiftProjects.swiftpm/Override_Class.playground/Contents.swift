import Foundation

class Venichle {
    var speed : Int {
        return 0
    }
    var capacity : Double {
        return 0.0
    }
    var cost : Double {
        return 0
    }
}

class Car : Venichle {
    override var speed : Int {
        return 90
    }
    override var capacity: Double {
        return 5.0
    }
    override var cost : Double {
        return 10000
    }
}

class Plane : Venichle {
    override var speed : Int {
        return 400
    }
    override var capacity: Double {
        return 100.0
    }
    override var cost : Double {
        return 15000
    }
}

class Train : Venichle {
    override var speed : Int {
        return 100
    }
    override var capacity: Double {
        return 25.0
    }
    override var cost : Double {
        return 8000
    }
}

let transports = [Car(), Train(), Plane()]

let people : Double = 535
let distance = 3000

for transport in transports {
    let count = ceil(people / transport.capacity)
    let cost = count * transport.cost
    let time = distance / transport.speed
    print("The \(transport.self) can move people for \(count) times and \(time) hours by \(cost) rub. ")
}
