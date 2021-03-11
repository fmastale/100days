import UIKit

// #1
let driving = {
    print("I'm diving in my car")
}

driving()

// #2
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}

driving2("London")

// #3
let drivingWithReturn = { (place: String) -> String
    in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("Krakow")
print(message)

// #4
func travel(action: (_ place: String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}
