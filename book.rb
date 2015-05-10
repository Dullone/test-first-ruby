#!../../simon_says
require "simon_says"
class Book
	def initialize ()
	end

	def title= (title)
		@title = titleize(title)
	end

	def title
		@title
	end
end