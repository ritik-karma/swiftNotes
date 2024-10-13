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

w
