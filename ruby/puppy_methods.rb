# Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
# Add a speak method that takes an integer, and then prints "Woof!" that many times.
# Add a roll_over method that just prints "*rolls over*".
# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that all of these methods work as expected.

class Puppy
  def initialize
  	puts "initialzes new puppy instance"
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
  	puts "Woof " * integer  	
  	# integer.times
  	# 	puts "woof" 
  	# 	puts "#{Woof.ti}"

  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(integer)
  	p integer * 7
  end

  def shake
  	puts "*sticks out paw*"
  end





end

dog = Puppy.new
dog.fetch("ball")
dog.speak(3)
dog.roll_over
dog.dog_years(4)
dog.shake