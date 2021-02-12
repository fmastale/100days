import UIKit

// Creating classes
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

// Inheritence
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    override init(name: String, breed: String) {
        super.init(name: name, breed: breed)
    }
}

let burek = Poodle(name: "Burek", breed: "Poodle")

// Overriding methods
class Dog2 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle2: Dog2 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy2 = Poodle2()
poppy2.makeNoise()

// Final classes
final class Dog3 {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

// Copying objects
class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

struct Singer2 {
    var name = "Taylor Swift"
}

var singer2 = Singer2()
print(singer2.name)

var singerCopy2 = singer2
singerCopy2.name = "Justin Bieber"

print(singer2.name)

// Deinitializers
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive!")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}

// Mutability
class Singer3 {
    let name = "Taylor Swift"
}

let taylor = Singer3()
print(taylor.name)

struct Singer4 {
    var name = "Taylor Swift"
}

let taylor2 = Singer4()
print(taylor2.name)
