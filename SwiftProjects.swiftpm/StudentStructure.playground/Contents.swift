struct Student {
    // stored properties
    var name: String
    var surname: String
    var DoF: DateOfBirthday
    
    // coputed properties
    var age: Int {
        return 2023 - DoF.year
    }
    var yearStudy: Int {
        get {
            if age > 6 {
                return age - 6
            } else {
                return 0
            }
        }
    }
}

struct DateOfBirthday {
    var date: Int
    var month: Int
    var year:  Int
}

var newStudent = Student(name: "Nikita", surname: "Repin", DoF: DateOfBirthday(date: 22, month: 12, year: 2004))
print(newStudent)
print(newStudent.age)
print(newStudent.yearStudy)
