func reverseString(_ s: inout [Character])  {
            var i = 0
    var j = s.count - 1
    
    while (i<j) {
        s.swapAt(i, j)
        i += 1
        j -= 1
    }
    }
