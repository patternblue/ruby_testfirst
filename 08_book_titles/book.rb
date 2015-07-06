class Book


	attr_accessor :title

	def title=(value)
		small_words = ["a", "an", "and", "the", "in", "of"]
		the_title = value.split(" ").map(&:downcase).map(&:capitalize)
		new_title = Array.new
		the_title.each do |word|
			if small_words.include? word.downcase
				new_title << word.downcase
			else
				new_title << word.capitalize
			end
		end
		new_title[0] = new_title[0].capitalize
		new_title[-1] = new_title[-1].capitalize

		@title = new_title.join(" ")

	end

	# def title
	# 	return @title
	# end
end
