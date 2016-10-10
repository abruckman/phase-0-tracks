#DECLARE METHODS
#Convert yes/no to true/false
def to_boolean(answer)
	#if yes go to true
	if answer=="yes"
		return true
	#if false go to no
	elsif answer == "no"
		return false
	end
end
#test it 
# puts "say yes"
# truth = gets.chomp
# p to_boolean(truth)
# truth = to_boolean(truth)
# p truth
# puts "say no"
# lies = gets.chomp
# p to_boolean(lies)
# lies = to_boolean(lies)
# p lies

#create a preferences hash
prefers = {}

#DRIVER CODE
#prompt for client's full name
puts "what is client's full name?"
prefers[:name] =gets.chomp

#prompt for client's number of rooms
	#convert to integer
puts "how many rooms?"
prefers[:rooms] = gets.chomp
prefers[:rooms] = prefers[:rooms].to_f

#prompt for client's budget
puts "what is the client's budget?"
prefers[:budget] = gets.chomp
	#convert to float
prefers[:budget] = prefers[:budget].to_i


#prompt for client's number of children
puts "How many children does the client have?"
prefers[:children] = gets.chomp
	#convert to integer
prefers[:children] = prefers[:children].to_i

#prompt for client's favorite artist
puts "Who is your favorite artist?"
prefers[:artist] = gets.chomp

#prompt for client's favorite city
puts "What is your favorite city?"
prefers[:city] = gets.chomp

#prompt if client wants carpet
puts "do you want carpet?"
prefers[:carpet] = gets.chomp
	#convert from yes/no to true/false
prefers[:carpet] = to_boolean(prefers[:carpet])

#prompt if sustainability is priority
puts "is sustainabilit a priority?"
prefers[:sustainability] = gets.chomp
#convert to boolean
prefers[:sustainability] = to_boolean(prefers[:sustainability])
#prompt for client's favorite color
puts "what is the client's favorite color?"
prefers[:color] = gets.chomp

#print the hash
p prefers

#prompt for corrections

#if they say none, move on

# if they have a correction 
	#prompt for new value
	
	#prompt for client's full name

	#prompt for client's number of rooms
		#convert to integer

	#prompt for client's budget
		#convert to float

	#prompt for client's number of children
		#convert to integer

	#prompt for client's favorite artist

	#prompt for client's favorite city

	#prompt if client wants carpet
		#convert from yes/no to true/false

	#prompt if sustainability is priority
	#convert to boolean

	#prompt for client's favorite color

#print the method