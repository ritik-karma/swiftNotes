
//for model only camelcase allowed in swift & if api has snakecase use  decoding strategies.


///** Type Safety*: Type safety refers to a language's ability to catch and prevent type-related errors during compilation. In Swift, all values have a specific type, and the compiler ensures that operations are performed only on values of compatible types. This helps prevent many common types of bugs related to type mismatches.

///**Type Inference*: Type inference is the ability of the compiler to automatically deduce the data type of variables based on the initial value assigned to them. This means you don't always need to explicitly specify the data type
    var nname = "John" // Swift infers that name is of type String

///**Type Annotation* : Type annotation in Swift refers to explicitly specifying the type of a variable, constant, parameter, or return value.   It's done by adding a colon (:) after the name, followed by the desired type. For example: In this example, aaage is explicitly annotated as an integer (Int).
    var aaage: Int = 30


///** Type Alias*: A type alias in Swift allows you to provide a new name for an existing type. It's declared using the typealias keyword. This can be useful for making complex types more readable or providing shorter names for commonly used types. For example:
 typealias Distance = Double
var distance: Distance = 5.0

//MARK: - Variables

var num1 = 1
var num2 = 2

var maxNum = max(num1, num2) //it will take max element automatically
maxNum

num1 = num2 ///Pouring num2 into num1 container




let name = "ritik"                  //let is immutable (constant)
/// Now further 'name' will take only string values   (it known as Type safety)
var age = 24                        // var is mutable
    //or
var aage: Int = 24

print(type(of: age))           ///returns the type of something

var value = Int()           ///alloating initial value
var values: Int             ///Only declared not initialized. if used then will get an error
var string = String()
value
string

var foo = false
var foo2 = foo
foo = true
foo2
 var zoo: Int
var lastName = "Karma"
print("String concadination \(name+lastName )")



print(Int.max)                   /// max number a program can have
//
var x = 5
let y = 10
x -= 2                              //x = x-2
x != y

//tuple assignment
var (num3, num4) = (2, 3)



//MARK: - String interpolation
///taking variable inside the text
let ages = 55
let ritik: String = "your age is \(ages)"
print(ritik)

print("your age is \(age) is \(foo)")

var p = 5
var q = 2

print("this is \(p+q)")
var product = "\(p) * \(q) = \(p*q)"
print(product)

//MARK: - input with optional

var n = readLine() ?? ""        //takes input defalut string
print(n)
var i = Int(readLine() ?? "") ?? 0    // defalt conversion 0



//MARK: - Range Operators

//closed
//1...10

//Half-Open Range
//1..<10

//One-Sided Range
// ...2  or  2...

let arr = [9,1,2,5,4,5]
for i in arr[...3] {
    print(i)
}


/// for concadination  operands should be same type


//MARK: -> Type Casting
///Converting dataType into another dataType


var num = 100
print(String(num).count)


func add(num: Int) -> Int {
    return num+10
}

add(num: Int(10.45))


//MARK: - type Checking with 'as?'
///Only prefered for if let conditions.   (only suceed if its INT)
/*
 as?: Returns an optional value; it safely handles cases where the cast might fail.
 as!: Assumes the cast will succeed and will crash if it doesn’t. (Not Recommended)
*/
var num0 = 3
if let myNum = num0 as? Int {
    print(myNum)
}

//MARK: - Operators

///Logical not operator '!' = used for bool output for toggle it

//sum += i (sum = sum + i)
//identity operator '===' :- Used to compare instances of class

//MARK: - Acces specifiers ( for: classes structs var func)
/*Types: from full restricted to full freedom
 
 private:- Cannot be accessed outside only within
 
 fileprivate: - Can be accessed outside also but cannot accessed outside the file
 
 internal (Default):- another file also
 
 public :- can be accessed another module (projects) also like framworks.But cannot overide it only retrive
 
 open: full freedom
 */

//MARK: - DEBUG PRINT()
//debugPrint:
//
//    •    Provides more detailed and descriptive output.
//    •    Particularly useful for debugging purposes.
//    •    Outputs additional information for complex data types, such as describing optionals and custom types.
