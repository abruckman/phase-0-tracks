
#declare a name endcoding method
# test name "Zalet Libotum" has all the vowels and edge cases.
def encode(realident)

	#downcase the string and declare a separate value to be operated on so we can print realident at the end
	ident = realident.downcase
	#turn name into a array
	ident = ident.split(' ')
	#swap the first and last name's location in the array
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
	#if its not a vowel or letter don't change it		
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
	
	
	
end

#delcare an empty namelist hahs
namelist = {}

#driver code
#prompt the user for their name
puts "What is your name?"
yourname = gets.chomp
# #set up a loop that will run until they say quit or just hit enter
until yourname == "quit" || yourname == ""
#run encode in the loop on their name
	newname = encode(yourname)
	#add the info to the namelist
	namelist[yourname] = newname
	#prompt them for their next input
	puts "Enter the next name to encode, or enter 'quit'"
	yourname = gets.chomp
end

#if they quit print the namelist. It should iterate throug the hash printing it in sentance form
namelist.each {|real, fake| puts "#{fake} is actually #{real}"}
