struct Student {
    var name: String
    var surname: String
    var averageScore: Float
}

let group = [
    Student(name: "Nik", surname: "Repin", averageScore: 4.33),
    Student(name: "Nastya", surname: "Repina", averageScore: 4.88),
    Student(name: "Steven", surname: "King", averageScore: 3.80),
    Student(name: "Agata", surname: "Kristi", averageScore: 4.98),
    Student(name: "Kris", surname: "Solf", averageScore: 4.65)
]

func printGroup(_ group: [Student]) {
    var index = 1
    for student in group {
        print("\(index))", student.name, student.surname, student.averageScore)
        print("----------------------|")
        index += 1
    }
}

printGroup(group)
