//: # Swift basics

//: ## Constant and Variables

var someVariable = "Store some value" // type string

var someInteger = 12

var doubleValue = 3.14

//: ### constants

let SOME_CONSTANT = 20 // type integer

var age = 22

var population = 100_000_000

//: ### multi line strings

var str1 = """
this is an example
of multi
line strings
"""

var str2 = """
This goes \
over \
multiple lines.
"""

var iAmAwesome = true

//: ## String Interpolation

var name = "Ankit Sharma"
var output = "Hello! \(name)"

//: ## Type Annotations

let album: String = "I am awesome"
let yearReleased: Int = 1969
let heightOfAPerson: Double = 170.66
let speakingTruth: Bool = true

//: # Arrays, Dictionaries, Sets and Enum

//: ## Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrinson"
let ringo = "Ringo Star"

let beatles = [john, paul, george, ringo]

print(beatles[1])
//beatles[10]

//: ## Sets
//: ### random order and unique values
let colors = Set(["red", "yellow", "green"])

let colors2 = Set(["red", "yellow", "green", "red", "purple"]) // no duplicate elements are allowed

//: ## Tuples
// allows to store several values in a single value
// cannot remove or add values afterwards.
// fixed in size
// cannot change the type of items afterwards

var nameNew = (first: "Ankit", last: "Sharma")

nameNew.0
nameNew.first

//: ### Arrays vs Sets vs Tuples

let address = (house: "7/16", street: "Gali number 7", city: "Gurugram")

let cricketers = ["Sachin", "Sehwag", "Ganguly"]

let wicketKeepers = Set(["Dhoni", "Pant", "Saha", "Dravid"])

//: ## Dictionaries
let heights = [
	"Ankit Sharma": 170,
	"Sri Harsha": 171,
	"Divay": 169,
	"Gopal": 170.59
]

heights["Divay"]

// default values in dictionary
let favoriteIceCream = [
	"Ankit": "Chocolate",
	"Divay": "Vanilla"
]

print(favoriteIceCream["Ankit"])

print(favoriteIceCream["Gopal"])

print(favoriteIceCream["Viju Bhai", default: "Unknown"])

//: ## Empty Collections
// Arrays, sets and dictionaries are called collections, because they collect values together in one place.

// empty dictionary with strings for keys and values
var teams = [String: String]()
teams["Paul"] = "red"

// empty array
var results = [Int]()

// empty sets: exception - done differently
var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var resultsArr = Array<Int>()


//: ## Enumerations
//  way of defining groups of related values in a way that makes them easier to use.

let result1 = "failure"

// what if someone uses different naming
let result2 = "failed"
let result3 = "fail"

// all these three strings are different, and mean different things.
// with `enum` we can define Result type which can be either success or failure.

enum Result {
	case success
	case failure
}

let result4 = Result.failure

// another simple example

enum Activity {
	case bored
	case happy
	case running
	case talking
	case singing
}

// enum associated values
enum Activity1 {
	case bored
	case happy
	case running(destination: String)
	case talking(topic: String)
	case singing(volume: Int)
}

let talking = Activity1.talking(topic: "football")

// enum raw values
enum Planet:Int {
	case mercury
	case venus
	case earth
	case mars
}

let earth = Planet(rawValue: 2)
