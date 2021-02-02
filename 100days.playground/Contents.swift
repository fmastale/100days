import UIKit

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1] // Paul McCartney

let john2 = "John Lennon"

let beatles2: [String] = [john2]
beatles2[0] // John Lennon

// Sets
let colors = Set(["red", "green", "blue"])
let color2 = Set(["red", "green", "blue", "red", "green", "blue"])

// Tuples
var name = (firs: "Taylor", last: "Swift")
name.0
name.firs
name.firs = "Adam"

var city = (name: "London", lat: 0.59, lon: -0.11)
city.name
city.lat
city.lon = 0.03

// Arrays vs sets vs tuples
// tuple - collection of fixed, related values, with precise position or name
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

// set - collection of unique values or useful if you need to quickly check if given value is in collection
let set = Set(["Jan", "Marian", "Papryczek"])

// array - coolection which allows duplicated values and where order matters
let pythons = ["Eric", "Graham", "John", "John"]


// Dictionaries
// collections which are storing elements like arrays, but you can access elements using keys (key : value - pair)
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

let heights2: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

// Dictionary default values
// def value for non existing key is nil
// but you can provide different def val
let favouriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favouriteIceCream["Paul"]
favouriteIceCream["Charlot", default: "Unknown"]

// Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

var results = [Int]()
results.append(1)

var words = Set<String>()
words.insert("Zoo")

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

// Enumerations
// group of related values, defined in a way which make them easier to use
enum Result {
    case success
    case failure
}

let testResult = Result.success

// Enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "football")

// Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2) //counting from 0

enum Planet2: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

let newEarth = Planet2(rawValue: 3) //counting from 1


