class Timer

	attr_accessor :seconds
	attr_accessor :time_string

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def seconds
		return @seconds
	end

	def time_string
		ss = @seconds%60
		mm = (@seconds/60)%60
		hh = (@seconds/60/60)%60
		return sprintf("%02d", hh)+":"+sprintf("%02d", mm)+":"+sprintf("%02d", ss)
	end

end
