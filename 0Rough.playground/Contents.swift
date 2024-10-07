

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0
    var count = 1
    for buyIndex in 0..<prices.count {
        for sellIndex in count..<prices.count{
            var tempProfit = 0
            tempProfit = prices[sellIndex] - prices[buyIndex]
            if (tempProfit > profit && tempProfit > 0) {
                profit = tempProfit
            }
        }
        count += 1
    }
    return profit
}


var x = [7,6,4,3,1]
x.max()
maxProfit(x)
