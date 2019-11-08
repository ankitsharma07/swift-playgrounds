//: # Looping

//: ## For loops

let count = 1...10

for number in count {
	print("The number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
	print("\(album) is on Apple Music.")
}

print("Players gonna ")
for _ in 1...5 {
	print("play!")
}

//: ## While loops

var number = 1

while number <= 20 {
	print(number)

	number += 1
}

//: ## Repeat loops

// similar to do while loop in C/C++

var newNumber = 1
repeat {
	print(newNumber)
	newNumber += 1
} while newNumber <= 20


// exiting loops - use break
var countDown = 2
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}


// skipping item - use continue

for i in 1...10 {
	if i%2 == 1 {
		continue
	}
	print(i)
}
