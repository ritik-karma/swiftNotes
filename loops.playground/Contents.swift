//MARK: - for in
/*
 for (iteration) in (range) {
    code...
 }
 */

for i in 0..<5 {
    print("okbuddy",terminator:"   ")  ///'terminator' parameter is used to specify what should be printed after the content being printed. In this case, it's printing three spaces " ". Also won't occupy full line.
}


//MARK: Traversing an Array
let array = [10, 20, 30, 40, 50]
///By Values
for value in array {
    print("Value: \(value)")
}
///By Indexes
for index in 0..<array.count {
    let value = array[index]
    print("Index: \(index), Value: \(value)")
}


                                    



let arrayOfName = ["ayush", "mohit", "rakesh", "jugnuo"]
for name in arrayOfName{
    print(name)
    if (name == "mohit"){
        break ///oposite is continue
        
    }
}




//MARK: Print table 1 to 5
for i in 1...5{
    print("table of \(i)")
    for j in 1...10{
        print(i*j)
    }
}


let star = ["jord", "ayu", "ok"]
for peo in star where peo == "ok" {           //Optional -> where
    print(peo)
}
for (index, value) in star.enumerated() {     //used for accessing index & vlaue
    print("the \(value) is at \(index)")
}

for i in 0...25 {                            //... means to , ..< means to less then
    print(i)
}

// ex  store random number in array

var op: [Int] = []
for _ in 0...25 {
    let ran = Int.random(in: 0...80)         //store random num
    op.append(ran)
}
print(op)

//ex
for i in 0..<10 {
    if (i == 5){
        continue     ///if use 'break' loop will ends at 5
    }
    print(i)
}
//MARK: -> For iterating in array

///NOTE: If you don't use any functionality with array name then it will iterate with index values instead of index only.

/////MARK: for not iterating in first index
//for i in 1..<grades.count

// ex

var price = [45,33,67,89]
let dis = 5
for i in price {
    print("discounted price are \(i - dis)")
}
for i in 0..<price.count {             //don't make space bw <p, i iterate values nt indexes
    let p = price[i]
    print(p)
        price[i] -= dis                          //will reduce prices by discount on the array ((var) it is mutable array )
}

//MARK: >   where
for i in price where i > 45 {
    
    print("where ex \(i)")
}
//MARK: ->


//ex find even or odd

func evOd(x: Int, y: Int, z: String) {
    for i in x...y {
        if (z=="e"){
            if (i%2==0){
                print("even num: \(i)")
            }
        } else if (z=="o") {
            if (i % 2 != 0){
                print("odd num: \(i)")
            }
        }
    }
}
evOd(x: 0, y: 10,z: "o")



let number = 12345
let stringNumber = String(number)

for char in stringNumber {
    if let digit = Int(String(char)) {
        print(digit)
    }
}


//MARK: - while loop

var countdown = 10
while countdown >= 0 {                  ///take only bool condition
    print("Launching in \(countdown)")
    if countdown == 0 {
        print(".....Launch.....")
    }
    countdown -= 1
}



//MARK: - repeat (similar to do while loop)

var num = 1...10
repeat {
    print ("i am priting")
} while  num.count < 5
