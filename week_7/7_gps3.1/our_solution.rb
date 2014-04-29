# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Tim McClung
# 2. AJ Jaiyeola
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to  add an item to the list
# As a user, I want to  to remove an item from the list
# As a user, I want to  check current items on list
# As a user, I want to  sort the items in the list alphabetically
# As a user, I want to  check total number of items
# As a user, I want to  find out total cost of items in list

 
# Pseudocode
=begin
#Create class Item
# attr_writer :name
# def initialize(name, price)
# @name = name
# @price = price
# end
# def price
# return @price
# end
# end

Create class list
def initialize(arr)
@arr = [arr]
end

def add(item)
 @arr << item
 @arr
end

def remove(item)
@arr.delete(item)
end

def check
puts @arr
end

def sort
@arr.sort
end

def total_items
@arr.length
end

def total_cost
 total_price = 0
 @arr.each do |x| total_price += x
 end
 end

 
=end
# Your fabulous code goes here....
class Item
    def initialize(name, price)
        @name = name
        @price = price
    end
    def price
        @price
    end
    def name
        @name
    end
end

class List
    def initialize(arr)
        unless arr.is_a?(Array)
            raise ArgumentError("Input must be an array")
        end
        @arr = arr
    end

	def add(item)
	    unless item.is_a?(Item)
	        raise ArgumentError("Not an item")
	    end
	    @arr << item
	    @arr
	end

	def remove(item)
	    unless item.is_a?(Item)
	        raise ArgumentError("Not an item")
	    end
	    @arr.delete(item)
	    @arr
	end

	def check
	    @arr
	end

	def sort
	    @arr.sort_by!{|x| x.name}
	end

	def total_items
	    @arr.length
	end


	def total_cost
	    total_price = 0
	    @arr.each{|x| total_price += x.price}
	    return total_price
	end
end

# DRIVER CODE GOES HERE. 
laptop = Item.new("laptop", 1000)
phone = Item.new("phone", 300)
pen = Item.new("pen", 5)
charger = Item.new("charger", 10)
soda = Item.new("soda", 1)
comb = Item.new("comb", 5)
array_list = [laptop, phone, pen, charger, soda]
ajsList = List.new(array_list)
puts ajsList.add(comb) == [laptop, phone, pen, charger, soda, comb]
puts ajsList.remove(phone) == [laptop, pen, charger, soda, comb]
puts ajsList.check == [laptop, pen, charger, soda, comb]
puts ajsList.sort == [charger, comb, laptop, pen, soda]
puts ajsList.total_items == 5
puts ajsList.total_cost == 1021

# Reflection
# This GPS session went by extremely smoothly. Since I
# had worked with AJ earlier today we were pretty familiar
# with each other's work habits, so we solved problems very
# quickly. Rick had to chime in to help us with a few
# hiccups but we were mostly working very efficiently.
# I think we went above and beyond a little bit with some
# of the user-cases and methods we programmed, but we were
# able to get all of our driver code to pass and I'm confident
# that we refactored our code well.