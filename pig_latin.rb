def translate (text)
	words = text.split(' ')
	index = 0
	words.each do |s|
		#find first vowel
		first_volew_found = false
		i = 0
		while (!first_volew_found || i >= s.length)
			if /[aeiou]/.match(s[i].downcase)
				first_volew_found = true
			else
				i+=1
				if s[i] == 'u' && i > 0
					if s[i-1].downcase == 'q'
						i+=1 #include 'u' in 'qu'
					end
				end
			end
		end
		#cut out the consonants up to the first found vowel
		consonants = ""
		if i > 0
			consonants = s.slice(0,i)
		end
		words[index] = s.slice(i, text.length) + consonants + "ay"
		index += 1
	end
	words.join(" ")
end