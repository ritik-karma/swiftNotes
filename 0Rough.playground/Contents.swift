func romanToInt(_ s: String) -> Int {
    let romanValues: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50,
        "C": 100, "D": 500, "M": 1000
    ]
    
    var output = 0
    let characters = Array(s.uppercased()) // Convert to uppercase to handle case insensitivity
    
    for i in 0..<characters.count {
        guard let currentValue = romanValues[characters[i]] else {
            print("Invalid Input")
            return -1 // Or some other error handling
        }
        
        // Check for subtraction condition
        if i < characters.count - 1, let nextValue = romanValues[characters[i + 1]], currentValue < nextValue {
            output -= currentValue // Subtract if the current value is less than the next
        } else {
            output += currentValue // Otherwise, add the current value
        }
    }
    
    return output
}

// Example usage:
let result = romanToInt("MCMXCIV") // Example: returns 1994
print(result)
    
