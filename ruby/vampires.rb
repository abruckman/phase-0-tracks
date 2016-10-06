puts "how many employees are we interviewing?"
employees = gets.chomp.to_i
currentemp = 0

while currentemp<employees 

	puts "what is your name?"
	vmpname = gets.chomp 
	puts "what year were you born?"
	year = gets.chomp.to_i 
	puts "how old are you?"
	age = gets.chomp.to_i
	puts "our company serves garlic bread. Should we order you some? (yes or no?)"
	bread = gets.chomp
	puts "would you like to enroll in the company's health insurance? (yes or no?)"
	insurance = gets.chomp


	agediff = (2016-year) - age 
	if agediff <= 1 && agediff >= -1   
		ageright = true
	else
		ageright = false
	end

	if ageright && (bread == "yes" || insurance == "yes" )
		vamp = 1
	end

	if !ageright && (bread == "no" || insurance == "no")
		vamp = 2
	end

	if !ageright && bread == "no" && insurance == "no"
		vamp = 3
	end

	if vmpname == "Drake Cula"  
		vamp = 4
	elsif vmpname == "Tu Fang"
		vamp = 4
	end

	close = false
	puts "do you have any allergies? list one at a time, type 'done' when finished "
	while close == false
		
		allergy = gets.chomp
		if allergy =="sunshine"
			vamp = 4
			close = true
		elsif allergy == "done"
			close = true
		else
			puts "any others?"
		end
		
	end

	if vamp == 1
		puts "Probably not a vampire"
	elsif vamp == 2
		puts "Probably a vampire"
	elsif vamp == 3
		puts "Almost certainly a vampire"
	elsif vamp == 4
		puts "Definitely a vampire"
	else
		puts "results inconclusive"
	end

	currentemp = currentemp + 1
end
puts "Actually, never mind! What do these questions have to do with anthing? let's all be friends."