/*
public func: Visible to any code that imports the module where the function is defined. Use it to expose functions outside the module.
func (implicitly internal): Visible only within the module where it is defined. Use it for internal module functions.

 If you wrote private before func it means it will be private for only that class.

*/
//MARK: -
func PrintName() -> Any {
    return "Ayush"
}
PrintName()

 

///Default I/P parameter is let (constant)
func Sum(a: Int, b: Int) ->Int {             //Sum(input parameter) -> return type
    return a + b                               //must include return if we use return type
}
var y = 5
print(Sum(a:6,b:y))

//MARK: for not iterating in first index
//for i in 1..<grades.count


//MARK: I/P parameter name which can use Outside
func number(intNum a: Int){
    print("number is \(a)")
}
print(number(intNum:10))


//MARK: Without I/P parameter name & Default value
func kj(_ no: String, name:String = "ayush", home:Bool = true) {
    if home {
        print(no+name)
    } else {
        print("\(no) \(name) is at work")
    }
}
print(kj("ok"))
print(kj("ok", name: "ritik", home: false))


//MARK: no limit
func variadic(num: Int...){
    print(num)
}
//Same can do by (num: [Int])
variadic(num: 1,2,3,4,4)


//MARK: taking tuple as I/P parameter
func tupleFunc(num: (Int, Int, String)){
    print(num)
}
tupleFunc(num: (1, 34, "aoo"))


//MARK:  inout func
/*
- With this we can use predeclared var & make I/P parameter var (muatable)
- it always use with '&' while calling func
 */
var number = 10
func nuc (number:inout Int) {
    number+=10
    print(number)
}
nuc(number: &number)       ///'&___''work with address not values


//MARK:  defer func
///defer code will execute at end of the function
func deferFunc () {
    print("Beginning")
    var name: String
    defer{
        print("\(name) defer.. code")
    }
    name = "defer"
    print("ending")
}
deferFunc()


//MARK:  overloading in func
///Can create diff func with same name
func overloading (o: String) {
    print("o")
}
func overloading (m: String) {
    print("o")
}
///if I\P parameter variable will also be same then it will be 'function overriding' which only can be done in inheritence classes

  
//MARK:  Generic Function
///Can accept any dataType as an I/P parameter (can also used in classes.
///Can use multiple generics also.
func geneFunc<T>(m:T, n: T, o: String = "gen") {  //Instead of 'T' can use any string
    print(m)
}
/// I/P dataType should be same for all Generic parameters while calling an func
geneFunc(m: "ok", n: "78")
geneFunc(m: 5, n: 34, o: "default")
geneFunc(m: 5.5944, n: 1.0000)
geneFunc(m: true, n: false)


//MARK: - Closures

 
/// Similar to func but without func name
/// Basic syntax is
 do {
}


///So we can use anywhere we can do
let num = {
    print("This is closure")
}
num()


///same liike func we take I/P in closures also
let person = {
    (name: String, num: Int) in        ///'in' is diffrence b\w I\P parametre & code
    print("Person name is  \(name) & num is \(num)")
}
person("okinawa", 422) ///But unlike func nt required I\P parametre variable name while calling closure


let id = {
    (id: String) -> String in
    return "this is return \(id)"
}
id("chal")


//MARK:  trailing closure

func stud (name: ()->(), id: Int){  //name = closure parameter name taking closure as func iI/P parameter
    print("i am in func body")
    name()  //printing closure content which will be taken as I/P
    print("Ending the func with \(id)")
}
stud(name: {
    print("i am in the closure body with")
}, id: 89)

 
//MARK:  Autoclosures (can give closure without {}

func display (wish: @autoclosure ()-> ()){
    wish()
}

display(wish: print("wishesh to autoclosure"))


//MARK: Trailing closure with I/P type and return

func travel (price: Int, action: (String, Int)-> String){     //also we can give multi closure I/P & multi I/P in 1 closure also
    print("I am ready to go")
    action("mumbai", 5)
    print(action("koochi", 4))
    let send =  action("Goa", 10)
    print(send)
    
    print(action("Mars price is \(price)", 23))
    
}
//MARK: 3 ways to call closures
travel(price: 100, action: {
    (action: String, Int) -> String in  //having some string value in the action which was passed in func. also can give any name instead of string
    print("Trip To :-")
    return "i am going to \(action)"
    //return value will only print with print() func only
}
)
//below is the simplified version ↓
travel(price: 200) { tripName,num  in
    return "i am going to \(tripName) with \(num) members "
}
//More simplified version with shorthand '$n'
travel(price: 200) {
    return "i am going  to \($0) and the members going are \($1)" //closure value will automatically sit in shorthand. $0 is first input argument
}






//MARK: Note: closure also capture values (holds memory not like func that gives new values every time calling it (used in api


func numbuu ()-> (String)-> Void {// func that return closure
    var counter = 1
    print ("close \(counter)")
    return {_ in
        print("return with closer \(counter)")
        counter += 1
    }
}
print(numbuu())//WILL print description of return not result Because In Swift, closures do not automatically execute when passed to functions like print. Instead, they are treated as objects, and what gets printed is their description or the type information, not the result of executing the closure.
var result = numbuu() //return closure is assigned to the var result
result("goa")// Each call to result("goa") executes the closure, which prints the current value of counter and then increments it.
result("goa")
result("goa")
numbuu()

