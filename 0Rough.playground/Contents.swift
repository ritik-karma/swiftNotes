

func maxProfit(_ prices: [Int]) -> Int {
    if prices.isEmpty { return 0}
    var buyIndex = 0
    var sellIndex = 1
    var maxProfit = 0
    
    while (sellIndex < prices.count ) {
        let buy = prices[buyIndex]
        let sell = prices[sellIndex]
        let profit = sell - buy
        
        if (buy > sell) {
            buyIndex += 1
        } else {
            maxProfit = max(maxProfit, profit)
            sellIndex += 1
        }
        
        
    }
        
    return maxProfit
}


var x = [7,6,4,3,1]
x.max()
maxProfit(x)
