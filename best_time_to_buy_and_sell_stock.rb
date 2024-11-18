# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  day_buy = 0
  day_sell = 1
  max_profit = 0

  days = prices.length
  while day_sell < days
    if prices[day_buy] < prices[day_sell]
      profit = prices[day_sell] - prices[day_buy]
      max_profit = profit if profit > max_profit
    else
      day_buy = day_sell
    end

    day_sell += 1
  end

  return max_profit
end