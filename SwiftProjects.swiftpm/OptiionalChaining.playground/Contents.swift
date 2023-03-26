class Animal {
    let type : Type?
    let name : AnimalName?
    init (type : Type?, name : AnimalName?) {
        self.type = type
        self.name = name
    }
}

enum Type {
    case home
    case wild
}

enum AnimalName {
    case dog
    case cat
    case dug
    case chicken
    case octopus
    case dolphin
    case mouse
    case turci
    case seestar
}

let dog = Animal(type: .home, name: .dog)
let cat = Animal(type: .home, name: .cat)
let dug = Animal(type: .wild, name: .dug)
let mouse = Animal(type: .wild, name: .mouse)
let octopus = Animal(type: .wild, name: .octopus)

var animals = [dog, cat, dug, mouse, octopus]

var wildAnimals = [Animal]()
var homeAnimal = [Animal]()

animals.forEach { animal in
    if animal.type == .wild {
        wildAnimals.append(animal)
    } else {
        homeAnimal.append(animal)
    }
}

homeAnimal.forEach { animal in
    print(animal.name!)
}
wildAnimals.forEach { animal in
    print(animal.name!)
}





















print("хуй")
