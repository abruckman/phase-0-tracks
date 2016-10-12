#declare a name endcoding method
# test name "Zalet Libotum" has all the vowels and edge cases.
def encode(ident)
p ident
	#downcase the string
	ident = ident.downcase
	#turn name into a string
	ident = ident.split(' ')
	#swap the first and last name's location in the string
	ident = ident.reverse
	#return to a string
	ident = ident.join(' ')
	#turn it into an index of chars
	ident = ident.chars
	#declare an array of vowels
	vowels = ['a', 'e', 'i', 'o', 'u']
	#its best to do vowels backwards because reverse indexing works better for edge case
	vowels = vowels.reverse
	#make an array of consonants
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
	#best to reverse this as well
	consonants = consonants.reverse
	#iterate through ident
	ident.map! {|letter| 
	#replacing all vowels
		if vowels.include?(letter)
	#with the previous vowel from the array
			letter = vowels[vowels.index(letter) - 1]
		elsif consonants.include?(letter)
			letter = consonants[consonants.index(letter) -1]
			
		else
			letter = letter
		end
	}
	#rejoin the array
	ident = ident.join
	#last step is recapitalizing. split it at the space again
	ident = ident.split(' ')
	#iterate through with the .capitalize method
	ident.map! {|word| word.capitalize! }
	#rejoin the array
	ident = ident.join(' ')
	#Zalet Libotum => Mocuvan Bemiv
	p ident
end

#driver code
#prompt the user for their name
puts "What is your name?"
yourname = gets.chomp
#set up a loop that will run until they say quit or just hit enter
until yourname == "quit" || yourname == ""
#run encode in the loop on their name
	encode(yourname)
	puts "Enter the next name to encode, or enter 'quit'"
	yourname = gets.chomp
end
#prompt them for their next input