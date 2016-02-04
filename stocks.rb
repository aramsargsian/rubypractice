# stock prices
# input several days worth of a stock price
# spit out best day to buy best day to sell for biggest profit
# easy stuff

# the stock_picker function is what well use to do all the stuff

def stock_picker(array)


	i = 0 
	j = 1

	profit_list = Array.new

	while i < array.length do
		while (j <= array.length && j > i) do
			profit = array[j].to_i - array[i].to_i
			profit_list << profit
			if profit_list.max == profit
				buy = i
				sell = j
			end
			
			j += 1
		end
		i += 1
		j = i + 1
	end
	puts [buy,sell]
end

puts "Enter the stock prices: "
sprices = gets.chomp.split
# puts sprices.inspect
prices = sprices.map(&:to_i)
# puts prices.inspect

stock_picker(prices)


