# create santa class
class Santa

#initialize that prints initializing "instance Santa instnace"
	def initialize
		puts "initializing Santa instance..."
	end

#create Speak method
	def speak
		puts "Ho, ho ho! Haaaappy holidays!"
	end

#creat eat_milk_and_cookies method
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

end

#test

dave = Santa.new
dave.speak
dave.eat_milk_and_cookies("snickerdoodle")