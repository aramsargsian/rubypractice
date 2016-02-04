
#better way to do it. just here for reference. not my work. wtf is combination. as

def stock_picker(prices)	
	best_dates = []		
	combinations = prices.combination(2).to_a	
	sorted = combinations.sort {|x,y| y[1] - y[0] <=> x[1] - x[0]}		
	best_dates = [prices.index(sorted[0][0]), prices.index(sorted [0][1])]		
	print best_dates
end

stock_picker([17,3,6,9,15,8,6,1,10])
