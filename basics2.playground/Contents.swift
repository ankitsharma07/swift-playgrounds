//: # Operators

//: ## Arithmetic Operators

let firstScore = 13
let secondScore = 14

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

// remainders
let remainder = firstScore % secondScore

//: ## Operator Overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

// adding array elemets
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//: ## Compound assignment operators

// has an assignment at the end of arithmetic operators giving it different value
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//: ## Comparison operators

let first_score = 6
let second_score = 4

first_score == second_score
first_score != second_score
first_score < second_score
first_score <= second_score
first_score > second_score
first_score >= second_score

// Also, works on strings

"Taylor" <= "Swift"


//: # Conditions

let firstCard = 11
let secondCard = 12

if firstCard + secondCard == 21 {
	print("Blackjack")
}
else {
	print("Regular Cards")
}


//: ## Combining Operators

let age1 = 21
let age2 = 22

if age1 > 18 && age2 > 18 {
	print("Both are above 18")
}
else if age1 > 18 || age2 > 18 {
	print("One of them is above 18")
}

//: ### The ternary operator

// condition ? if part : else part

print(firstCard == secondCard ? "Cards are the same" : "Cards are different")
