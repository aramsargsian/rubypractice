def substrings(str, dict)
	ss = Hash.new(0)
	string_array = str.split(' ')
	dict.each do |jj|
		string_array.each do | hh|
			if hh.include? jj
				ss[jj] += 1
			end
		end
	end

	puts ss
end

puts "Yo yo yo, enter your dictionary down below: "
dictionary = gets.chomp.downcase.split
puts "Now enter your string: "
string = gets.chomp.downcase

substrings(string, dictionary)

#What i learned from this.
=begin
	
i tried matching the sentence words to the dictionary, when the instructions clearly said the other way around. but i wasnt focusing. had to look at someone elses solution to figure out what i was doing wrong. though i had to use regex. woops. on to the next one.
	
end