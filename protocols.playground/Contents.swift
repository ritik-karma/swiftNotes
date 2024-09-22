import SwiftUI


// protocols:  (set of rules) (used in both classes & structs)
/*
 Protocol extensions can be used to defining a function
 */

//MARK: - PRE-DEFINED PROTOCOL

//MARK: Codable (Encodable & Decodable)






//MARK: - CUSTOM PROTOCOL
protocol protocolName {}
protocol carDetail {
    ///cannot use or define stored properties / func directly in protocols use { get } or { get set }
    var car: String {get}
    func carDetail()
}

struct CarDetails: carDetail, protocolName{
    func carDetail() {
        print("deatil of \(car)")
    }
    var car: String
}
var carObj = CarDetails(car: "hayabumbum")
carObj.carDetail()
carObj.car = "maruti" //can do set also

var vipCar: carDetail = CarDetails(car: "mercedes")///protocol applied here
//vipCar.car = "tata"    cannot assign get only property



protocol identifiable {
    var id: String { get}
}

struct users: identifiable {
    var name: String
    var age: Int
    var id: String
}

let user1 = users(name: "ritik", age: 23, id: NSUUID().uuidString)
let user2 = users(name: "ayush", age: 28, id: NSUUID().uuidString)

///Shape example: -
protocol shape {
    var numberOfSide: Int {get}     ///You have to make it var for using get later on you can change it to let in struct
    var name: String { get }
    func getArea () -> Int
}

struct Rectangle1: shape{
    let numberOfSide: Int
    var name: String
    let width: Int
    let height: Int
    func getArea() -> Int {
        return width * height
    }
}

struct Squar: shape{
    var numberOfSide: Int
    var name: String
    let sideLength: Int
    func getArea() -> Int {
        return sideLength * sideLength
    }
}

let rectangle = Rectangle1(numberOfSide: 4, name: "Rectangle", width: 45, height: 30)
let squar = Squar(numberOfSide: 4, name: "Squar", sideLength: 89)

rectangle.getArea()

var shapes : [shape] = []

shapes.append(rectangle)
shapes.append(squar)

for i in shapes {
    print("shape name is \(i.name) and their area is \(i.getArea())")
}


class ok: protocolName{
 
}
