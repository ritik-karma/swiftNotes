//MARK: - if else
///Prefered for sigle checks
//ex1
var name = 50
if name == 34  {
    print("ok")
}
else if name < 33{
    print("jaa")
}
else {
    print("file")
}

//ex2

var totalCash = 50000
var priceOfCar = 40000
var interest = 0.8

if totalCash >= priceOfCar && interest <= 0.6 {
    print("Buy it")
}


//ex3

var gfIsHungry = true
var gfIsTired = true

if gfIsTired || gfIsHungry {
    print("your in danger")
} else {
    print("your safe")
}

//MARK: If statement with optional value
func romanToInt(_ s: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50,
        "C": 100, "D": 500, "M": 1000
    ]
    var output = 0
    let characters = Array(s.uppercased()) // Convert to uppercase to handle case insensitivity
    
    for i in 0..<characters.count {
        guard let currentValue = romanValues[characters[i]]
        else {
            print("Invalid Input")
            return -1 // Or some other error handling
        }
        // Check for subtraction condition
        if i < characters.count - 1,
            let nextValue = romanValues[characters[i + 1]],
            currentValue < nextValue {
            
            output -= currentValue // Subtract if the current value is less than the next
        } else {
            output += currentValue // Otherwise, add the current value
        }
    }

    return output
}


//  MARK: - Ternary Operator '?'
///  Prefered : double checks

//Text("Notificaton: \(isOn ? "Enable": "Disable")")

var user1age = 18
var user2age = 15

print("In this election \(user1age >= 18 ? "user can poll": "cannot poll") " )

//MARK: - switch
///Prefered for multiple checks

let matchmakingRank = 500

func determinePlayerLeague(from rank: Int) {
    switch rank {
    case 1..<50:
        print("You are in BRONZE League")
    case 50..<100:
        print("You are in SILVER League")
    case 100..<200:
        print("You are in GOLD League")
    default:
        print("You are in a league of your own. You are too good.")
    }
}

// Example usage:
determinePlayerLeague(from: matchmakingRank)


