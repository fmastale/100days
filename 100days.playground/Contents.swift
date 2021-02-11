import UIKit

// Initializers
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

let mariush = User()
print(mariush.username)

struct User2 {
    var username: String
}

let marco = User2(username: "Marco")
print(marco.username)

// Reffering to the current instance
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// Lazy properties
struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
ed.familyTree

// Static properties and methods
struct Student {
    static var classSize = 0
    var name: String
    
    init (name: String) {
        self.name = name
        Student.classSize += 1
    }
}

let edwardo = Student(name: "Edwardo")
let taylor = Student(name: "Taylor")

print(Student.classSize)

// Access control
struct Person3 {
    private var id: String
    
    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
        return "My social security number is \(id)"
    }
}

let mariano = Person3(id: "12345")
print(mariano.identify())


