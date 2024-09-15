import Foundation


//MARK: It is a shorthand argument '$0' or $0 $1...

///Q: Return Unique element of Any type without using set

var arrayOfInt = [1,2,2,2,3,3,4,5]
var arrayOfString = ["ok", "ok", "kaka", "tuntun"]

func uniqueArray (arrayAny: [Any]) -> [Any] {
    var uniqueArray: [Any] = []
    
    for i in arrayAny {
        let iString = String(describing: i)
//string(desc... can be used for converting more complex items into string
        
        let isUnique = !uniqueArray.contains { String(describing: $0) == iString
        }
        
        if isUnique{
            uniqueArray.append(i)
        }
    }
    return uniqueArray
}


uniqueArray(arrayAny: arrayOfInt)
