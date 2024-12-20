


///A computed property in Swift is a property that does not store any data directly. Instead, it calculates and returns a value each time it’s accessed. Unlike stored properties, which store constant or variable values, computed properties dynamically compute a value based on the current state or other properties.



struct Rectangle {
    var width: Double
    var height: Double
    
    // Computed property to calculate the area of the rectangle
    var area: Double { ///and will return in type of double
        return width * height
    }
}
 
let rectangle = Rectangle(width: 10, height: 5)
print(rectangle.area) // Output: 50


