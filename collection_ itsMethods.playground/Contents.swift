//MARK: - array (ordered - same type)

var item = ["ritik",  "karma"]
var gender: [Any] = []            ///Any used to take initial any type (further types should same)
var clas = ["a", "b", "c"]
var num = [1,2,3,0,0]
 num[1]                             ///getter
num[1] = 10                         ///setter

var arrayOfAnyType: [Any] = [true, 4, "ok"]

var agee: [Int]                  ///Declared but not initialized
var age: [Int] = []
      //or                      //creates an empty Int array declared & Initialized
var aage = [Int]()

age += [45,66,34]                  //adding values in array

// insertion in array

item.append("ayush")                    //Add in array (let can't add)
item.append(contentsOf: ["q","r","p"])  //for adding multiple elements
item.append(contentsOf: clas)           // also insert another array
item.insert("ay", at: 0)                 // inert at 0 index and shift the array
item.isEmpty
item.count                          // counts item in array
item.max()                          /// Returns maximum value in array
item.first  //.last                // first or last item in array
item.reverse()                     // reverse the order
//item.contains(where: ...)
item.sort()                        // increasing order
///For assigning in another var use sorted instead of sort
item.sort(by: >)                   // decreasing order
item.swapAt(0, 3)                  /// swapping value of indexes
item.shuffle()                     // random orders
item.contains("ayush")             //it return true or false
item.remove(at: 1)                 //Remove the index 1 block
item.removeFirst()                 //remove from first
item.removeLast()                  // remove last item
item.count                        // no of elements in a array
num.removeAll { $0 == 0 }        ///Used when a specific condition met remove that in which it is 0

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]        //Array slicing

// Slice from index 2 to index 5 (inclusive)
let slice = array[2...5]
print(slice) // Output: [3, 4, 5, 6]



//MARK: - Set  (unordered - no duplicates)
/* Better performance then array */

var ok: Set<Int> = []       // Created an empty Set

var ages = Set(age)         // copy from an array

ok.insert(101)              //insert is used instead of append
ok.insert(101).inserted     /// .inserted return bool value as 101 is already ther it will return false

//MARK: - Dictionary [Key : value] (or can make any type of pair) (no indexing)
/*(Better look-up then array beca.. constant time lookup)*/

    ///key should be unique

var devices: [Int: String?] = [:]       //Empty Dictionary (Can use any Data type) or automatically swift will select after filling

devices[9] = nil
devices[1] = "value"
devices  //swift automatically removes nil values

var fruit = [1 : "",2: "banana"]
print(fruit[1] ?? "key nt found")                  //it is not nil it having space string
fruit[1] = "l"                                    //update 1 : "l"
print(fruit[1])                         //use default value (optional) to avoid warining
fruit[4]="kela"
print(fruit[1]!)         ///for printing perticular values ! is used in dictionary
var countries = ["china", "england", "japan"]

var listCont = ["contries": countries]  ///Storing array as values
print(listCont)

for (key,value) in listCont {
    print("key is \(key) and value are \(value). ")
}

//


//MARK: - Tuple (Ordered - Store Diff dataType as a Subsets (GroupOfElement, Array, Dictonary) - fixed size)

var emptyTuple: (Int,String,Double)
emptyTuple = (1, "hello", 3.14) ///Once a tuple is created and given values, you cannot directly add or remove elements from it because tuples in Swift are immutable


var product  = ("Macbook", 12000)
print(product.1)

var proDetail = (1, name: "mac", price: 1200)
print(proDetail.1)
///or
print(proDetail.name)
proDetail.1 = "iphone"
print(proDetail.name)

var numb = (1,2,3,(4,5,6),"name",[1,2,"ok"],(name: "ayush", id: 5))
print(numb.3)
print(numb.3.1)
print(numb.5[2])
//change values
numb.6.name = "ritik"


//MARK: - High order function

//MARK:  map
//it uses closures


//lets do op throughtout the array

var numbers = [1,2,3,4,5]
var names = ["ayush", "mohan", "guddu", "bhaiyu"]

var numbersMultiplyBy2 = numbers.map {
    $0*2  //in this shorthand is used as an each element in this array
}
var capitalNames = names.map {
    $0.uppercased()
}
        ///OR can do without map also if do nt want to acces each one instead do all
//var capitalNames = names.description.uppercased()
numbersMultiplyBy2
capitalNames

//MARK:  COMPAct map
///similar to map but it will skip the nil values
var capNames = names.compactMap {
    $0
}

//MARK: Flat map
///with flat map combination of array will act as an 1 array
var combineArray = [[1,2,3],[4,5,6],[7,8,9]]
var flatArray = combineArray.flatMap {
    $0
}
print(flatArray)

//MARK: Reduce

flatArray.reduce(0) {
        $0+$1         ///$0 is previous value & $1 is the next value
    ///1+2=3+4=7+5.....=45
}

//MARK: RemoveAll
///Used when a specific condition met remove that in which it is 2
flatArray.removeAll { $0 == 2 }


//MARK: Filter
let evenNum = flatArray.filter { $0%2==0 }


//MARK: Sorted
///In a perticular order
let DecOrder = flatArray.sorted { $0>$1 }
        ///OR
let accOrder = flatArray.sorted(by: >)

