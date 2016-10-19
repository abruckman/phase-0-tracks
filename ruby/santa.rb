#create a movelast method for arrays
def movelast(list, arg)
	#shift the array at the index of arg creating a new array
	new_array = list.shift(list.index(arg))
	#shift the arg to the end of the array
	list << list.shift
	#recombine the original two arrays
	list = new_array + list
end

# trunk = ['a', 'b', 'c', 'd', 'e']
# p movelast(trunk, 'c')

# create santa class
class Santa

#initialize that prints initializing "instance Santa instnace"
	def initialize(gender, ethnicity)
		puts "initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

#create Speak method
	def speak
		puts "Ho, ho ho! Haaaappy holidays!"
	end

#creat eat_milk_and_cookies method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end
	# 	celebrate_birthday should age Santa by one year.
	def celebrate_birthday
		@age += 1
	end
	# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings. Vixen knows what he did.
	def get_mad_at(reindeer)
		#set as last in reindeer_rankings
			#use set last method
		@reindeer_ranking = movelast(@reindeer_ranking, reindeer)
	end	
	# The @gender attribute should have a setter method that allows @gender to be reassigned from outside the class definition.
	def gender=(new_gender)
		@gender = new_gender
	end

	def gender
		@gender
	end
	# The method age should simply return @age.
	def age
		@age 
	end
	# The method ethnicity should return @ethnicity.
	def ethnicity
		@ethnicity
	end

end

dave = Santa.new("male","white")
p dave.ethnicity
p dave.gender
dave.gender = "female"
p dave.gender
p dave.get_mad_at("Dancer")
p dave.age

#test

# dave = Santa.new
# dave.speak
# dave.eat_milk_and_cookies("snickerdoodle")

# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

# p santas

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
#   santas << Santa.new(example_genders[i], example_ethnicities[i])
# end
# p santas