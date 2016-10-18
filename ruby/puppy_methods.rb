

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

class Cat

#initialize
	def initialize
		puts "initialzing cat"
	end
#method say meow
	def meow
		puts "meow"
	end

#chase whatever animal
	def chase(animal)
		puts "cat chases #{animal}"
	end
end


dog = Puppy.new
dog.fetch("ball")
dog.speak(3)
dog.roll_over
dog.dog_years(4)
dog.shake

kitty = Cat.new
kitty.meow
kitty.chase("mouse")

#use loop to make 50 instances

cats = []


50.times do |i|
	i = Cat.new
	cats << i
end

p cats

cats.each do |cat| 
	cat.meow
	cat.chase("bird")
end