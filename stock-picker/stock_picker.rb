def stock_picker(stocks)
    buy_date = 0
    sell_date = 0
    profit = 0

    stocks.each_with_index do |buy_price, buy_index|
        stocks.each_with_index do |sell_price, sell_index|
            temp_profit = sell_price - buy_price
            if (temp_profit >= profit) && (sell_index > buy_index)
                buy_date = buy_index
                sell_date = sell_index
                profit = temp_profit
            end    
        end
    end
    result = "[ #{buy_date} , #{sell_date} ]"
    result
end

stocks = [17,3,6,9,15,8,6,1,10]
puts stock_picker(stocks)
