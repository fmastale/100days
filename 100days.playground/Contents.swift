import UIKit

// Handling missing data
var age: Int? = nil
age = 38

// Unwrapping optionals
var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

var name2: String? = "Mariush"

if let unwrapped = name2 {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}

// Unwrapping with guard
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return }
    
    print("Hello, \(unwrapped)")
}

let Mariush = "Mariush"
greet(Mariush)

let Dariush: String? = "Dariuhs"
greet(Dariush)

let Bartush: String? = nil
greet(Bartush)

// Force unwrapping
let str = "5"
let num = Int(str)!

// Implicitly unwrapped optionals
let age2: Int! = nil

// Nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"
print(user)

// Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// Optional try
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sikret")
print("OK!")

// Failable initializers
let str3 = "5"
let num3 = Int(str)

struct Person {
    var id: String
    
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

let Marco: Person! = Person.init(id: "Marco1234")
print(Marco.id)

// Typecasting
class Animal {}

class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]

for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
