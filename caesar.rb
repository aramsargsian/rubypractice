# In cryptography, a Caesar cipher, also known as Caesar's cipher, the shift cipher, Caesar's code or Caesar shift, is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet. For example, with a left shift of 3, D would be replaced by A, E would become B, and so on. The method is named after Julius Caesar, who used it in his private correspondence.

def caesar_shift(sent, numb)
	poop = sent.split("")
	narray = []

	poop.each do |letter|

		puts letter + " = " + letter.ord.to_s

		if letter.ord >= 65 && letter.ord < 91

			ll = letter.ord + numb.to_i
			if ll > 90
				while ll > 90 do
					ll -= 26
				end
			end

			puts "now with confusion = " + ll.chr
			narray << ll.chr


		elsif letter.ord >= 97 && letter.ord < 123
			ls = letter.ord + numb.to_i

				while ls > 122 do
					ls -= 26
				end

			puts "now with confusion = " + ls.chr
			narray << ls.chr
		elsif letter.ord < 65 || (letter.ord > 90 && letter.ord < 97) || letter.ord > 122 
			narray << letter
		end

		
	end
	puts narray.inspect
	puts narray.join("")


end

puts "Input a sentence and index for confusion please: "
puts "The sentence: "
sentence = gets.chomp
puts "The confusion index: "
number = gets.chomp

caesar_shift(sentence, number)

