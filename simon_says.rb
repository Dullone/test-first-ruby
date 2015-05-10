def echo (text)
	text
end

def shout (text)
	text.upcase
end

def repeat (text, number = 2)
	((text + ' ' ) * number).chop
end

def start_of_word(text, number)
	text.slice(0, number)
end

def first_word (text)
	text.split(' ', 2)[0]
end

def titleize (text)
	exclude = "the", "and", "over"
	words = text.split(' ').map do  |s| 
		if exclude.include?(s)
			s
		else
			s.capitalize
		end
	end
	words.first.capitalize!
	words.join(" ")
end