def add (num1, num2)
	num1 + num2
end

def subtract (num1, num2)
	num1 - num2
end

def sum (numbers)
	sum = 0
	if numbers.length > 0
		numbers.length.times do |i|
			sum += numbers[i]
		end
	end
	sum
end

def multiply(*numbers)
	numbers.inject(1) { |sum, number| sum * number }
end

def power (number, power)
	sum = 1 #power of zero is 1
	power.times do 
		sum = sum * number
	end
	sum
end

def factorial (number)
	sum = 1 #factorial 0 = 1
	number.times do |i|
		sum *= (i + 1)
	end
	sum
end