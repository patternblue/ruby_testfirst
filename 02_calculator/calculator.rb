def add(a,b)
	a + b
end

def subtract(a,b)
	a - b
	end

def sum(anarray)
	the_sum = 0
	anarray.each do |element|
		the_sum += element
	end
	return the_sum
end

def multiply(a,b)
	a*b
end

def power(a,b)
	a**b
	end

def factorial(something)
	product = 1
	something.downto(1) do |n|
		product *= n
	end
	return product
end