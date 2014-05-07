# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
# Input:
# => is_fibonacci? takes an integer as a parameter
# Output:
# => is_fibonacci? outputs a boolean value
# Steps:
# => CREATE is_fibonacci? method
# => CREATE array to store fibonacci sequence in
# => CREATE while loop that runs while input num is greater than the largest number in the sequence array
# => POP last two numbers from array into variables
# => PUSH last two numbers along with their sum back into array
# => RETURN true if num is in array, false otherwise

# 3. Initial Solution

# def is_fibonacci?(num)
# 	sequence = [0, 1]
# 	while num > sequence.last
# 		first_number, second_number = sequence.pop(2)
# 		third_number = first_number + second_number
# 		sequence.push(first_number, second_number, third_number)
# 	end

# 	return true if num == sequence.last
# 	return false
# end

# 4. Refactored Solution

def is_fibonacci?(num)
	sequence = [0, 1]
	while num > sequence.last
		first_number, second_number = sequence.pop(2)
		sequence.push(first_number, second_number, first_number+second_number)
	end

	num == sequence.last ? true : false
end

# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

p is_fibonacci?(random_fibonacci) == true
p is_fibonacci?(8670007398507948658051921) == true
p is_fibonacci?(random_fibonacci+100) == false
p is_fibonacci?(927372692193078999171) == false

# 5. Reflection
# To be honest I really wasn't sure where to start with this one. After
# a lot of brainstorming I concluded an array would be the best place to
# store the pieces of the fibonacci sequence. I still wasn't sure how I
# would efficiently find out and store the bits of the fibonacci sequence.
# After doing some research, I found a solution at
# http://commandercoriander.net/blog/2012/09/09/testing-for-fibonacci-numbers/
# that was very elegant. I used that as the framework for my solution, and
# refactored it a bit, and it worked really well. Essentially, it pops off the
# last two numbers on the array, and then pushes them back in along with their
# sum. Once the number is equal to the most recent sum (or not) it will return
# the results.