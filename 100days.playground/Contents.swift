import UIKit

// Arithmetic operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the"
quote += " Sapniards"

// Comparison operators
let first = 6
let second = 4

first == second
first != second

first < second
first >= second

//this is working for String as well; btw lowercase came before uppercase, so this is true: "a" > "A"
"Taylor" <= "Swift"

// Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2 {
    print("Aces A lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// Combining conditions
let age1 = 12
let age2 = 21

//&& if first condition will be false, Swift won't check second
if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of those were over 18")
}

// The ternary operator
let firstPersonAge = 18
let secondPersonAge = 21

firstPersonAge == secondPersonAge ? print("Those people are in the same age") : print("Those people are not in the same age")
print(firstPersonAge == secondPersonAge ? "Those people are in the same age" : "Those people are not in the same age")

// Switch statements
//deefault is mandatory - swift need you to cover all the cases
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("It's hot outside")
default:
    "Hard to tell what is the weather"
}

// Range operators
let examScore = 85

switch examScore {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did OK")
case 85..<100:
    print("You did great")
default:
    print("Do you even take an exam?!")
}



