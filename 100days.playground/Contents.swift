import UIKit

// Protocols
protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

let mariush = User(id: "1234")

displayID(thing: mariush)

// Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Emoloyee: Payable, NeedsTraining, HasVacation {}

struct GrandParadeEmployee: Emoloyee {
    func takeVacation(days: Int) {
        print("Employee has still \(days) of annual leave")
    }
    
    func study() {
        print("Employee is studying Swift right now!")
    }
    
    func calculateWages() -> Int {
        return 1_000_000
    }
}
// Extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let number2 = 9
number2.isEven

// Protocol extensions
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

// Protocol-oriented programming
protocol Identifiable2 {
    var id: String { get set}
    func identify()
}

extension Identifiable2 {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User2: Identifiable2{
    var id: String
}

let ziom = User2(id: "ziom")
ziom.identify()

