def echo(hello_string)
	return hello_string
end

def shout(a_string)
	return a_string.upcase
end

def repeat(a_string,amount=2)
	output = "#{a_string} "*amount
	return output.strip
end

def start_of_word(word, n)
	output = String.new
	# letter = "test"
	word.split("").each do |letter|
		if letter == word[n]
			break		
		end	
		output << letter
	end
	return output
end

def first_word(word)
	return word.split(" ")[0]
end

def titleize(phrase)
	new_phrase = String.new
	the_array = phrase.split(" ").map(&:downcase)
	the_array.each do|item|

		puts item
		# n = item.length
		if item.length > 4 || item == the_array.first || item == the_array.last
			item.capitalize!
			# puts item
		end
		new_phrase << " " + item
	end

	return new_phrase.strip

end

# titleize("Jaws")

