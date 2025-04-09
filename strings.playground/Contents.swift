
let ask = "what"

var char:Character = "C"  ///only takes single character

var empty = " "
/* Type Annotation without Initialization: This declares a variable empty of type String without initializing it.
 Requirement: You must assign a value to empty before you can use it, otherwise you'll get a compile-time error.*/
     
var eempty: String
/*Type Inference with Initialization: This declares a variable ans and initializes it with an empty string. The type of eempty is inferred to be String from the initial value.
 Ready to Use: Since ans is initialized at the time of declaration, it can be used immediately.*/

let arrayOfask = Array(ask) ///can apply more property like .uppercased

var name = "Ritik"
name.append(" karma")
///or
name+"karma1234" ///only print won't add in actuall variable

name.replacingOccurrences(of: " ", with: "") //Removing spaces (this can do alot more)
//like this cleaned string (spacial char also removed with lowercased
name.replacingOccurrences(of: "[^a-zA-Z0-9]", with: "", options: .regularExpression).lowercased()

name
name.count
name.lowercased()
name.reversed()    //In reverse order
char.isLetter

name.isEmpty
name.last              /// last char in string / similar .first
name.hasPrefix("k")   ///Prefix = String starts with
name.hasSuffix("o")    /// last index
name[name.startIndex]
name.dropFirst()                //drop will not affect the main variable
name.dropLast(3)
name
name.removeFirst(2)
name                            // remove will affect the main variable

///for printing reverse string
let surname = "karma"
for char in surname.reversed() {
    print(char) }               // accessing each character in a string



var num = 4

String(num)    //for conveting basic types into string
String(describing: num) //for some complex ones

//MARK: -> String Traversing

var myString = "Hello, World!"



//MARK: Direct
for char in name {
    print(char)
}

print("---------")

//MARK: Using Indices

for i in 0..<myString.count {
    let currentIndex = myString.index(myString.startIndex, offsetBy: i)  ///In this scenerio 'i' will be the index that are traversing
    let nextIndex = myString.index(after: currentIndex)
    
    if myString[currentIndex] == "e" && i < myString.count - 1 && myString[nextIndex] == "x" {
        print("Found 'e' followed by 'x'")
    }
}



