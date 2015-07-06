def translate(words)
	word_list = words.split(" ")
	new_word_list = []
	word_list.each do |word|
		new_word_list << translate_one_word(word)
	end
	return new_word_list.join(" ")

end
def translate_one_word(word)
	vowel_string = "aeiou"
	vowel_array = vowel_string.split("")
	word_array = word.split("")
		if vowel_array.include?(word[0])
		 	return "#{word}ay"
		else
			# test for 1 or 2 beginning consonants
			if vowel_array.include?(word[1])
				# has 1 beginning consonant followed by a vowel
				# check for "qu"
				if word[0.. 1] == "qu"
					return word[2..-1] + "quay"
				else
					return word[1..-1] + word[0] + "ay"
				end
			else
				# has 2 beginning consonants
				# check for the 3rd consonant
				if vowel_array.include?(word[2])
					# no 3rd consonant
					# check if xqu
					if word[1.. 2] == "qu"
						return word[3..-1] + word[0] + word[1] + word[2] + "ay"
					else					
						return word[2..-1] + word[0] + word[1] + "ay"
					end
				else
					return word[3..-1] + word[0] + word[1] + word[2] + "ay"
				end
			end
		end
end

