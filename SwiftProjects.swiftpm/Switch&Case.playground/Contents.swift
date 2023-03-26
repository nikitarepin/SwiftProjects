let student = ("Репин","Никита","Александрович")

switch student {
case (_,let name, _) where name.hasPrefix("А") || name.hasPrefix("О"):
print("Hi, \(name)")
case (_, let name, let middleName) where middleName.hasPrefix("Д") || middleName.hasPrefix("В"):
print("Hi, \(name) \(middleName)")
case (let surname, _, _) where surname.hasPrefix("Е") || surname.hasPrefix("З"):
print("Hi, \(surname)")
case let(surname, name, middleName):
print("Hi, \(surname) \(name) \(middleName)")
}
