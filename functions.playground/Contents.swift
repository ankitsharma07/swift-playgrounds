//: # Functions in Swift

// writing a simple function

func printHelp() {
	let message = """
Hey! Welcome to my app.

RUN the enviornment and forget about the pollution
"""

	print(message)
}


printHelp()


//: ### accepting parameters

func square (number: Int) {
	print(number * number)
}

square(number: 24)

//: ### returning values
func cube (num: Int) -> Int {
	return num * num * num
}

let result = cube(num: 8)
print(result)

//: ### parameter names
func sayHello(to name: String) {
	print("Hello, \(name)!")
}

sayHello(to: "Ankit")

//: ### omitting parameters labels

func greet(_ person: String) {
	print("Hello, \(person)!")
}

greet("Ankit")


//: ### default parameters

func greet_again(_ person: String, nicely: Bool = true) {
	if nicely == true {
		print("Hello, \(person)!")
	}
	else {
		print("Oh no, it's \(person) again.")
	}
}

greet_again("Ankit")
greet_again("Akshit", nicely: false)


//: ### variadic parameters - accepts any number of parameters

func square_numbers(numbers: Int...) {
	for number in numbers {
		print("\(number) squared is \(number * number)")
	}
}

square_numbers(numbers: 2, 3, 4, 5, 6)


//: ### writing throwing functions

enum PasswordError: Error {
	case obvious
}

func checkPassword (_ password: String) throws -> Bool {
	if password == "password" {
		throw PasswordError.obvious
	}

	return true
}

do {
	try checkPassword("password")
		print("The password is okay!")
}
	catch {
		print("The password is invalid!")
}

//: ### inout parameters


