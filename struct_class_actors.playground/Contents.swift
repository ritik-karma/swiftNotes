import Foundation

/*
For example :- Excel is struct(change on shared excel sheet will not affect to another & main.) & Googlesheet is classes (change on shared google sheet will not affect to another & main.)
 
 init =  The init method is used to initialize an instance of a structure or class, setting up its initial state by assigning values to its properties.
  (also known as constructer in other languages)
*/
///It holds member variables & member func's
///if we assign struct object to another var it will copy that but in the class both will refer to the same class.

//MARK: - struct (Value type)
/*
 
 ● Aggregate multiple value & func into a single value.
 ● light weight & easy to use.
 
 'init' in struct = Swift automatically provides a memberwise initializer if you don't define any initializers. (But You can define a custom init method to set up properties with specific values or perform additional setup. but no sense of  using cutom init)
 
 */

struct student {
   
    var name: String
    var surname = "karma"   //Given an initial value which is nt mandatory
    lazy var species = "human"

    static var id = 10 // 'Static' means It is shared among all instances(object) of the structure. There is only one copy of this variable, regardless of how many instances of the structure are created.Static variables are accessed and modified through the structure itself, not through instances.
    
    
    
    //Static func only accept static var
    func students () {
        print("Student names \(name)")
    }
    
    //mutating func can be used to change struct var values
    mutating func fullName () {
        name = surname
        print("My name is changed to \(name)")
    }
}

let y = student(name: "ritik", surname: "karma")
var x = student(name: "swift")
x.students()
x.name
x.fullName()
//error  y.id
student.id

struct user {
    
    let userName: String
    var invisible = true
    var freinds: [String] = []
}

var alice = user(userName: "alice")
alice.freinds = ["mohit"]

var bruno = user(userName: "bruno")
bruno.freinds = alice.freinds

alice.freinds.append("ritik")

alice.freinds
bruno.freinds





struct vehicle {
    var make: String
    var model: Int
    var hp : Int
    func getVInfo() {
        print("Made in year is \(make), model number is \(model) and the horse power of the vehicle is \(hp) ")
    }
    ///not required initializer
}
var hondaCivic = vehicle(make:"this year", model: 112, hp: 500)
///hondacivic will known as object same as in class

hondaCivic.getVInfo()

//Shown below how it is value type.
var hondaCar = hondaCivic
hondaCar.hp = 1000
hondaCivic.hp       //changing hp of hondaCar will not affect to hp of hondacivic



//MARK: Computed properties
///Computed properties in Swift are properties that do not store a value directly. Instead, they provide a getter and optionally a setter to retrieve and set other properties or perform calculations.
struct Rectangle {
    var width: Double
    var height: Double
    
    // Computed property
    var area: Double {
        return width * height
    }
    
    /// Computed property with a setter
    var perimeter: Double {
        get {
            return 2 * (width + height)
        }
        set(newPerimeter) {
            let ratio = width / height
            height = newPerimeter / (2 * (1 + ratio))
            width = height * ratio
        }
    }
}

var rect = Rectangle(width: 10, height: 5)
print(rect.area)          // Outputs: 50.0
print(rect.perimeter)     // Outputs: 30.0

rect.perimeter = 40
print(rect.width)         // Outputs: 12.5
print(rect.height)        // Outputs: 6.25


//MARK: use of init in struct
struct Rectangle2 {
    var width: Double
    var height: Double
    var area: Double

    init(width: Double, height: Double) {
        self.width = width              ///self refers that we r talking about this structs var
        self.height = height
        self.area = width * height
    }
}

let rect2 = Rectangle2(width: 5, height: 10)
print(rect.area)  // Outputs: 50.0


//MARK: lazy
///used for first time use var
///A lazy var in Swift is a property that is not initialized until it is accessed for the first time. This is useful for properties that are computationally expensive to create or are not always needed.
struct DataLoader {
    var fileName: String
    
    // Lazy property with closure
    lazy var fileContents: String = {
        // Simulate a time-consuming operation
        print("Loading file...")
        return "Contents of \(fileName)"
    }()
}

var loader = DataLoader(fileName: "example.txt")
print("DataLoader initialized.")

print(loader.fileContents)
/// Accessing again does not print "Loading file..." since it's already initialized
print(loader.fileContents)


//MARK: Property Observers (didset willset)
///oldvalue is predefined

var a: Int

a = 10
a = 100

/// willset 10     (remember only old value)
///didset  10 100 (remember both old & new value)

struct Progress {
    var task: String
    var pay:Int{
        didSet{
            print("my \(task) amount is before \(oldValue) and current is \(pay)")
        }
        willSet{ //it trigger first
            print("my \(task) amount before is \(pay)")
        }
    }
}
var progres1 = Progress(task: "code", pay: 500)
progres1.pay
progres1.pay = 1000  ///Output: my code amount is 500 /n my code amount is before 500 and current is 1000


//MARK: - class (Refrence type)

///Multiple inheritence is not allowed
///Let can also be muatable in classes
/*
 initialization is compulsary in class because its refrence type. (It needs something as refrence)
 
 'init' in classes = Classes do not get a memberwise initializer by default.You must define an init method to set up properties and call super.init() if the class inherits from another class.
    For init we can use ‘?’ for initially nill OR give Default value insted of self initialization but should be created as var not let to change further.
 
 'convenience init' = another init method Used to give some defalult var
*/

//MARK: terms
/*
 init =  what should we take while declaring object
 self = Refer within this class var (not outside var)
 super = Use parent class var in current class
 override =  Used to overriding the parent class var or func in current class
 */


//@MainActor if define that on class means complete class will be on main thread 

class dev {
    var name: String
    var job_title = "ios developer"
    var sallary: Int
    
    init (name: String, sallary: Int) {
        self.name = name       ///Input name  will be given to self.name means class's name var & can be diffrent for each obj
        self.sallary = sallary
        self.sallary = 5        //default sallary will be 5
        }
    
    convenience init (name: String){

        self.init(name: name, sallary: 2000)
    }
    func sayHello () {
        print("hello from parent class")
    }
    func say() {
        print("Hi")
    }
}
let T03 = dev(name: "kdjkf")
let T04 = dev(name: "ritik", sallary: 500 )
let T05 = dev(name: "ayush", sallary: 900)
 
print(T03 === T04)  ///we can check 2 instance is same or not with '==='
///false because it has diff data

T04.sallary ///O/P is 5 because in init last var is changing the I/P

///Shown below how it is refrence type.
let T06 = T04
print(T06 === T04) ///True because they share the same memory location
 
T06.sallary = 1000
T04.sallary               ///Change in my salary will affect t04 salary also because they are refering to the same class


//MARK: Inheritence (Only available in classes )
class ios_developer : dev{ ///inherite properties of dev class
    var uiFramework: String
    init(name: String,  sallary: Int,  uiFramework: String) {
        self.uiFramework = uiFramework
        super.init(name: name,  sallary: sallary)///
        ///Again init and super.init is required while inheriting properties of parent class
    }
    override func say() {
        super.sayHello()
        print("Hi overided")
    }
    func bye() {
        print("Bye Bye")
    }

}

var ritik = ios_developer(name: "Ritik",  sallary: 1000000, uiFramework: "SwiftUi")
T04.job_title
T04.job_title = "kjklj"
T04.job_title

ritik.say()
ritik.sayHello()///it is an inherite property

//MARK: final:  prevent a class from being subclassed or no one can inherite
final class Vehicle {
    var speed: Int = 0
}
// The following will result in a compilation error:
//class Car: Vehicle {
//    // Error: Cannot inherit from 'Vehicle' because it is marked 'final'
//}


//MARK:  Memory ARC(Automatic Reference Counting) (Only in classes)
/*
 
 ARC automatically frees up the memory used by class instances when those instances are no longer needed.
 
 For each object it holds the count that how much refrences are pointing to this object.
 Used for deallocating the object means you have done work  with object or not allocated to any another var . now you want to nil it but not mannually.
 
 working:
    • When you create an instance of a class, ARC sets its reference count to 1.
     •    Every time you assign that instance to a new variable or constant, ARC increases the reference count by 1.
     •    When a reference to the instance is removed, ARC decreases the reference count by 1.
     •    When the reference count reaches 0, ARC deallocates the instance, freeing up memory.
 
 3 Methods:-
 
 Strong (Default) : Previouslly we are using 'strong' method which is mannually nilling.
 
 weak: Can accept optional values
 
 unowned: Won't accept optional values.
 
 */

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit { ///prints a message when an instance of the class is deallocated.
        print("\(name) is being deinitialized")
    }
}

var reference1: Person?
var reference2: Person?
var reference3: Person?
///Because they r optional type it automatically initialized with a value of nil, and don’t currently reference a Person instance.

reference1 = Person(name: "ayush")
//Prints "John Appleseed is being initialized"
///Note that the message "John Appleseed is being initialized" is printed at the point that you call the Person class’s initializer. This confirms that initialization has taken place.

///If you assign the same Person instance to two more variables, two more strong references to that instance are established:

reference2 = reference1
reference3 = reference2
///There are now three strong references to this single Person instance.

///If you break two of these strong references (including the original reference) by assigning nil to two of the variables, a single strong reference remains, and the Person instance isn’t deallocated:
reference1 = nil
reference2 = nil

///ARC doesn’t deallocate the Person instance until the third and final strong reference is broken, at which point it’s clear that you are no longer using the Person instance:
reference3 = nil


//MARK: - Extention (For struct - classses - Any - protocols)
//Used to add some functionality in the class

extension dev {
    func devUpdated()  {
        print("Updated dev class")
    }
}
T03.devUpdated()


extension Int {
    func squared()-> Int{
        return self*self
    }
    var isEven: Bool{           //closure
        return self % 2 == 0
    }
}
var n = 10
n.squared()
n.isEven






//MARK: - static var (in class struct enum)

///static var stores memory in heap instead of stack

//MARK: -> Actors  (Similar like classes)
