# U3.W8-9: 

# I worked on this challenge by myself.

# 2. Pseudocode
# Input:
# => super_fizzbuzz takes an array as input.
# Output:
# => super_fizzbuzz outputs an array (with modifications)
# Steps:
# => CREATE super_fizzbuzz method
# => MAP array destructively
# => CREATE if statements for each case
# => RETURN modified array

# 3. Initial Solution

# def super_fizzbuzz(array)
# 	@array = array
# 	@array.map! {|x|
# 		if x % 15 == 0
# 			"FizzBuzz"
# 		elsif x % 3 == 0
# 			"Fizz"
# 		elsif x % 5 == 0
# 			"Buzz"
# 		else
# 			x
# 		end
# 	}
# 	return @array
# end

# 4. Refactored Solution

def super_fizzbuzz(array)
	array.map! {|number|
		if number % 15 == 0
			"FizzBuzz"
		elsif number % 3 == 0
			"Fizz"
		elsif number % 5 == 0
			"Buzz"
		else
			number
		end
	}
	array
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_input_array(base, size)
  (1..size).map { |i| base**(1+rand(15)) }
end

p super_fizzbuzz(random_input_array(3,100)) == ["Fizz"]*100

p super_fizzbuzz(random_input_array(5,100)) == ["Buzz"]*100

p super_fizzbuzz(random_input_array(15, 100)) == ["FizzBuzz"]*100

p super_fizzbuzz([1,2,3]) == [1,2,'Fizz']

p super_fizzbuzz([15, 5, 3, 1]) == ['FizzBuzz', 'Buzz', 'Fizz', 1]

# 5. Reflection
# I thought about using switch statements instead of if statements, but
# I felt as though if statements worked fine. The refactorization could
# have been put onto fewer lines, but it would become almost unreadable,
# so I left it the way it was. The destructive map! method worked perfectly
# for this, and I'm glad that I'm becoming more comfortable with destructive
# methods.