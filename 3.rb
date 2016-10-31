def substrings (string, dictionary)
	lowstring = string.downcase
	result = Hash.new(0)	

		if lowstring.include? " "
			words = lowstring.split(" ")
			words.each do |word|
				i = 0 
				while i < dictionary.length do
					if word.include? dictionary[i]
						result[dictionary[i]] += 1
					end 
					i += 1
				end
			end
		else
			j = 0 
			while j < dictionary.length do
				if lowstring.include? dictionary[j]
					result[dictionary[j]] += 1
				end
				j += 1 
			end
		end


	return result.sort.to_h
end


 dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
   

 puts substrings("below", dictionary)
 puts substrings("Howdy partner, sit down! How's it going?", dictionary)
