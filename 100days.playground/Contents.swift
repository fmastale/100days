import UIKit

// Functions
func favoriteAlbum() {
    print("My favorite album is Skream")
}
favoriteAlbum()


func secondFavoriteAlbum(name: String) {
    print("My favorite album is \(name)")
}
secondFavoriteAlbum(name: "Skream")


func printAlbumRelease(name: String, year: Int) {
    print("\(name) was released in \(year)")
}
printAlbumRelease(name: "Skream", year: 2001)


func countLettersInString(myString str: String) {
    print("The string \(str) has \(str.count) letters.")
}
countLettersInString(myString: "Hello")


func countLettersInString2(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}
countLettersInString2("Hello")


func countLetters(in string: String){
    print("The string \(string) has \(string.count) letters.")
}
countLetters(in: "Hello")


func albumsIsSkreams(name: String) -> Bool {
    if name == "Skream" {
        return true
    } else {
        return false
    }
}

if albumsIsSkreams(name: "Skream") {
    print("This is Skreams album")
} else {
    print("Dunno whoose alboum it is")
}

// Optionals
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatus(weather: "Rainy")
print(status)

var status2 = getHaterStatus(weather: "Rainy")
print(status2)


func takeHaterActions(status: String){
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = getHaterStatus(weather: "rainy") {
    takeHaterActions(status: haterStatus)
}

func yearAlbumWasReleased(name: String) -> Int? {
    if name == "Skream" {
        return 2001
    }
    if name == "Watch the ride" {
        return 2002
    }
    return nil
}


var year = yearAlbumWasReleased(name: "Skream")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year!)")
}

var name1: String = "Paul"
var name2: String? = "Bob"
var name3: String! = "Sophie"


// Optional chaining
func yearAlbumWasReleased2(year: Int) -> String? {
    switch year {
    case 2001:
        return "Skream"
    case 2002:
        return "Watch the ride"
    default:
        return nil
    }
}

let albumReleasedInYear = yearAlbumWasReleased2(year: 2001)?.uppercased()
print("The album is \(albumReleasedInYear)")

let albumReleasedInYear2 = yearAlbumWasReleased2(year: 2004) ?? "unknown"
print("The album is \(albumReleasedInYear2)")


// Enumerations
enum WeatherType{
    case sun, cloud, rain, wind, snow
}

func getHatersStatus2(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHatersStatus2(weather: WeatherType.sun)


enum WeatherType2 {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHatersStatus3(weather: WeatherType2) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}

getHatersStatus3(weather: .sun)


enum WeatherType3 {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatus4(weather: WeatherType3) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10 :
        return "meh"
    case .cloud, .wind:
        return "dislike"
    default:
        return nil
    }
}


// Structs
struct Person {
    var clothes: String
    var shoes: String
    
    func describe() {
        print("Hello world")
    }
}

let taylor = Person(clothes: "shirt", shoes: "sneakers")

print(taylor.clothes)

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

taylor.describe()


// Classes
