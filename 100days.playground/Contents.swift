import UIKit

// Writing functions
func printHelp() {
    let message = "Hello World!"
    print(message)
}

printHelp()

// Accepting parameters
print("Hello World!")

func square(number: Int) {
    print(number * number)
}

square(number: 2)

// Returning values
func square2(number: Int) -> Int {
    return number * number
}

let result = square2(number: 4)
print(result)

// Parameter labels
func sayHello(to name: String) {
    print("Hello, \(name)")
}

sayHello(to: "Taylor")

// Omitting parameter labels
func greet(_ person: String) {
    print("Hello, \(person)")
}

greet("Mariush")

// Default parameters
func greetAgain(_ person: String, _ nicely: Bool = false) {
    if nicely {
        print("I'm nicely saying hello to you \(person)")
    } else {
        print("You again, \(person)?!")
    }
}

greetAgain("Taylor")
greetAgain("Taylor", true)

// Variadic functions
// this type of function can accept any number of parameters of the same type
print("Heters", "gonna", "hate")

func newSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

newSquare(numbers: 2, 3)

// Writing throwing functions
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// Running throwing functions
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

do {
    try checkPassword("rikitiki")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout parameters
func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

print(myNum)

func sumOfFactors(for number: Int) -> Int {
    var sum = 0
    for i in 1...number {
        if number % i == 0 {
            sum += i
        }
    }
    return sum
}
let sum = sumOfFactors(for: 100)
