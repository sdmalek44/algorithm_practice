
def maximum_toys(prices, k)
    prices = prices.sort
    count = 0
    prices.inject(0) do |paid, price|
        if paid + price <= k
            paid += price
            count += 1
        end
        paid
    end
    count
end
