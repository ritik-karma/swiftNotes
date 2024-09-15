var age :[Int] = []

//MARK: - '?' optional

/*
 Optional values allow to code more safely when working with properties that may or may not have a value
 
 '?' is used to denote that the property is optional (can leave it blank also) like below ex:
 */

var bio: String?     //Not recomended


//MARK: - nil coalescing '??'
///giving an default value

var old = age.last ?? 100      //100 is a default
old
let userInput = readLine() ?? "empty"   // space is compulsary brfore ??
userInput

//

let l = Int(readLine() ?? "") ?? 0   // Only can give default value Int while convertion
let w = Int(readLine() ?? "") ?? 0
let area = l * w
print(area)




//MARK: - Force unwrap '!' (Generally not recommended by dev)
///this will open optional var as an normal var supposing as it has 100% value & if there is no value the app will crash.

if bio != nil {
    print(bio!)  //'!' is used to force unwwrap
}

///Ex: Force unwrapping an empty optional will result to crash.
//var kaka: Int?
//print(kaka!)


//MARK: - optional binding
//can use let , var or case


//MARK: 'if let'
///If its not empty assign to this
///Only used for optionals

if let old = age.last { /// it creates  local var (old) cannot be used outside of if let
    print("oldest age is \(old)")
}
else {
    //if age.last is empty come here. else is not mandat to use
    print("there is no old age")
}
///can do same work with  simple ifelse also by checking if nill...


//MARK:  guard (like a wall in func)

func oldage () {
    let numbu: Int? = nil
    guard var old = numbu else {
        return /// return will exit func if nil
    }
    print("Guard func \(old)")
}
old
oldage()


/* Guard functionality which is nt present in if let
 - else is compulsary in guard
 -  it created normal var nt local var
 */
func ol () {
    guard old > 1000 else {return} ///if guard is true then only it will go below of the code else return
    print("ok")
}

//MARK: - Optional chaining

struct User {
    var name: String
    var address: [String:Address]?
}

struct Address {
    var place: String
    var city: String
}

let userObj1 = User(name: "mohit")
let userObj2 = User(
    name: "ayush",
    address: [
        "Home" : Address(place: "Siddarth Nagar", city: "Indore"),
        "College": Address(place: "Vijay nagar", city: "Indore")
    ])

let O2name        = userObj2.name
let O2workAddress = userObj2.address?["work"] ///? is used to indicate optional chaining. This allows you to safely access properties and methods on an optional that might currently be nil. If any part of the chain is nil, the entire expression will return nil.

print(O2workAddress ?? "no work address")
print(userObj2.address?["Home"] ?? "no home address")
///we can use force unwrap instead optional chaining but as you know its not good practice of using force unwrap.
print(userObj2.address?["Home"]?.city ?? "no city")
///Why two ? ↓
/*
     •    The first ? is used to unwrap userObj2.address which is an optional dictionary.
     •    The second ? is used to unwrap the Address instance returned from the dictionary to access its city property.
 */
