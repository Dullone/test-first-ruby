class Timer
	attr_accessor :seconds
	def initialize()
		@seconds = 0
	end

	def time_string
		hour = @seconds / 3600
		minute = (@seconds % 3600)/60
		second = @seconds % 60
		hour.to_s.rjust(2,"0") +  ":" + minute.to_s.rjust(2,"0") + ":" + second.to_s.rjust(2,"0")
	end
end