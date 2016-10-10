#DECLARE METHODS
#Convert yes/no to true/false
def to_boolean(answer)
	#if yes go to true
	if answer=="yes" || answer== "true"
		return true
	#if false go to no
	elsif answer == "no" || answer == "false"
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
prefers[:rooms] = prefers[:rooms].to_i

#prompt for client's budget
puts "what is the client's budget?"
prefers[:budget] = gets.chomp
	#convert to float
prefers[:budget] = prefers[:budget].to_f


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
puts "is sustainability a priority?"
prefers[:sustainability] = gets.chomp
#convert to boolean
prefers[:sustainability] = to_boolean(prefers[:sustainability])
#prompt for client's favorite color
puts "what is the client's favorite color?"
prefers[:color] = gets.chomp

#print the hash
p prefers

#prompt for corrections
puts "What needs to be corrected?"
correct = gets.chomp
#if they say none, move on
if correct == "none"
	exit

# if they have a correction 
	#prompt for new value
	
	#prompt for client's full name
else
	correct = correct.to_sym
	puts "what is new value?"
	prefers[correct] = gets.chomp

	#if number of rooms or children
	if correct == :rooms || correct == :children	
		#convert to integer
	prefers[correct] = prefers[correct].to_i
	#if budget
	elsif correct == :budget	
		#convert to float
		prefers[correct] = prefers[correct].to_f

	#if its carpet or sustainability
		#convert from yes/no to true/false
	elsif correct == :carpet || correct == :sustainability
		prefers[correct] = to_boolean(prefers[correct])
	end
end


#print the method
p prefers