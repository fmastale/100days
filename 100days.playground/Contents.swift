import UIKit

// Variables and constants
var name = "Tim McGraw"
name = "Romeo"

let name2 = "Tim McGraw"
//name2 = "Romeo"

// Types of data
var name3: String
name3 = "Tim McGraw"

var age: Int
age = 25

//name3 = 25
//age = "Tim"

var latitude: Double
latitude = 36.166667

//var longitude: Float
//longitude = -86.783333

var longitude: Double
longitude = -86.783333

var stayOutTooLate: Bool
stayOutTooLate = true

var missABeat: Bool
missABeat = false

var nameAgain: String = "Tim McGraw"

let age2 = 25
let longitude2 = -86.783333
let missABeat2 = false

// Operators
var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b -= 1
b += 1

var c = 1.1
var d = 2.2
var e = c + d

var name5 = "Tim"
var name6 = "Romeo"
var both = name5 + " and " + name6

var f = 13%3

c > 3
c >= 3
c > 0
c < 2

var name7 = "Tim"
name7 == "Tim"
name7 == "TIM"
name7 != "TIM"

var stayInTheLine = true
!stayInTheLine

// String interpolation
var anotherName = "Tom"
"Your name is \(anotherName)"
"Your name is " + anotherName

var anotherAge = 25
"Your age is \(age)"
"Your age is \(age), but in 10 years you will be \(age + 10)"

// Arrays
var evenNumbers = [2, 4, 6, 8]
var songs = ["Make me", "Exothermic reactions", "Rutten"]
var songs2: [String] = ["Make me", "Exothermic reactions", "Rutten"]
var songs3: [Any] = ["Make me", "Exothermic reactions", "Rutten", 3]

songs[0]
songs[1]
songs[2]

type(of: songs)

var songs4: [String] = []
songs4.append("Rutten")

var songs5 = [String]()
songs5.append("Rutten")

var both2 = songs + songs2
both2 += ["Summer Dreams"]

print(both2)

// Dictionaries
var person = ["first": "Taylor",
              "middle": "Alison",
              "last": "Swift",
              "month": "December"
            ]
person["middle"]

// Conditionals statements
var action: String
var person2 = "lover"

if person2 == "lover" {
    action = "love"
} else if person2 == "player" {
    action = "play"
} else {
    action = "sing"
}


var otherAction: String
var stayOutTooLate2 = true
var nothingInBrain = true

if stayOutTooLate2 && nothingInBrain {
    otherAction = "troubles"
}

if !stayOutTooLate2 && nothingInBrain {
    otherAction = "everything is ok"
}

// Loops
for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

for i in 1..<10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Faker gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)


var songsAgain: [String] = ["Make me", "Exothermic reactions", "Rutten"]

for song in songsAgain {
    print("My favourite song is \(song)")
}


var people: [String] = ["Mariush", "Dariush", "Marcus"]

for i in 0..<people.count {
    print("\(people[i]) will dance to \(songsAgain[i])")
}


for i in 0..<people.count {
    var str = "\(people[1]) is going to dance to"
    
    for _ in 1...5 {
        str += " \(songsAgain[i])"
    }
    
    print(str)
}


var counter = 0

while true {
    print("Counter is now \(counter)")
    
    counter += 1
    
    if counter == 100 {
        break
    }
}


var songsAgain2: [String] = ["Make me", "Exothermic reactions", "Rutten"]

for song in songsAgain2 {
    if song == "Exothermic reactions" {
        continue
    }
    
    print("My favourite song is \(song)")
}


// Switch case
let liveAlbums = 2

switch liveAlbums {
case 0...1:
    print("it's just begging")
case 2...4:
    print("good job!")
default:
    print("more ahead")
}
