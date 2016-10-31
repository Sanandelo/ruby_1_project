def cesar_cipher(string, numb)
	result = ""

	def is_upper? 
		self === self.upcase
	end

	def one_word_dechipher(word,numb)
		letters = word.split("")
		letters.map! do |letter|
			letter_number = letter.ord
			new_numb  = letter_number + numb
			if letter.is_upper? 
				if new_numb > 90				
					letter  =   (new_numb- 26).chr
				else
					letter = new_numb.chr
				end
			else
				if new_numb > 122
					letter = (new_numb - 26).chr
				else
					letter = new_numb.chr
				end
			end
		end
		word = letters.join
		return word
	end

	if(string.include? " ")
		words = string.split(" ")
		words.map! do |word|
			one_word_dechipher(word, numb)
		end
		result = words.join(" ")
	else
		result = one_word_dechipher(string, numb)
	end

	
	return result
end



puts cesar_cipher("This Sentence WITH a LOT of Big Letters I would Like to dechipher",16 ) 