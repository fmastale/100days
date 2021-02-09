import UIKit

// Using closures as parameters when they accept parameters
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived")
}

travel { (place: String) in
    print ("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names
travel2 {
    "I'm going to \($0) in my car"
}

func number(number: (Int) -> Int) {
    let myNumber = number(1)
    print("My number is \(myNumber)")
}

number {(someNumber: Int) -> Int in
    return someNumber
}

number {
    $0
}

// Closures with multiple parameters
func travel3(action: (String, Int) -> String){
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) which is \($1) km away"
}

travel3 {(place: String, distance: Int) -> String in
    return "I'm going to \(place) which is \(distance) km away from here"
}

// Returning closures from functions
func anotherTravel() -> (String) -> Void {
    return {
        print("I'm going to \($0) today")
    }
}

let result = anotherTravel()
result("London")

//not recommended
let result2 = anotherTravel()("Krakow")

// Capturing values
func anotherTravel2() -> (String) -> Void {
    var counter = 1
    return {
        print("\(counter). I'm going to \($0) today")
        counter += 1
    }
}

let result3 = anotherTravel2()
result3("London")
result3("Krakow")
result3("Krzeszowice")
