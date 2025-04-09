func isPalindrome(_ s: String) -> Bool {

        var palindrome: String
        var reversedPalindrome: String
        var result = false
    
    palindrome = s.replacingOccurrences(of: "[^a-zA-Z0-9]", with: "", options: .regularExpression).lowercased()
    
    
     reversedPalindrome = String(palindrome.reversed())
    
    if palindrome == reversedPalindrome {
        result = true
    }
    
    
    
    
    
        


        return result
    }
