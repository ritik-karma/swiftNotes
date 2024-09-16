///* Whenever you have something that requires custom types
///* An enumeration defines a common type for a group of related values and enables you to work with those values in a type-safe way within your  code.
///     Use cases: Represents predefined sets of options or catefories in app
 
 
 
 

// MARK: -> Standard Enums (value types)

enum ColourScheme {
    static let x = 5   //static can be used for making stored properties in the enum
    case light
    case dark
    case custom
    case system
}
var scheme: ColourScheme = .dark
scheme = .light

if scheme == .dark {
    print("dark background")
} else if scheme == .light {
    print("light background")
} else {
    print("custom background")
}

switch scheme {
case .light:
    print("dark")
case .dark:
    print("light")
case .custom:
    print("custom")
case .system:
    print("kjj")
}


//MARK: -> Raw Values Enum

enum Weekday: String {
case monday = "mon"
case tuesday = "tue"
case wednusday = "wed"
case thrusday = "thu"
case friday = "fri"
case saturday = "sat"
}
///* if you give Int instead of string & also nt give any integer then integer values will automatically assigned in increasing order.

let today = Weekday.friday
print("today is \(today)")
print("today is \(today.rawValue)")


//MARK: -> More

enum OrderStatus {
    case processed
    case shipped(id: String, shippingTime: Int)
    case delivered
    
    var statusMessage: String {                 ///Computed property
        switch self {
        case .processed:
            "Your order is processed"
        case .shipped(let id, let shippingTime):
            "Your order is shipped\(id) and ship in \(shippingTime)"
        case .delivered:
            "Your order is delivered"
        }
    }
}
var order: OrderStatus = .delivered
print(order.statusMessage)


enum OrderStatus1 {
    case processed(String)
    case shipped(id: String,shippingTime: Int)
    case delivered(String)
}
let myOrder: OrderStatus1 = .shipped(id: "Your order is shipped", shippingTime: 2)


//MARK: -> Enum with protocols

enum Colour: CaseIterable {             ///Created a collection
    case red
    case blue
    case white
    case black
}
let allColours = Colour.allCases

for colour in allColours {
    print("colour is \(colour)")
}
