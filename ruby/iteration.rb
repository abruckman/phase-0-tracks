# def iterate
# 	x = 3
# 	p x
# 	yield(x)
# 	yield(x) 
# 	yield(x)
# 	p x
# end

# iterate { |x| p x = x + 1 }
# letters = ["a", "b", "c", "d", "e"]
# puts "Original data:"
# p letters

# ########
# modified_letters = letters.map do |letter|
# 	puts letter
# 	letter.next
# end

# puts "after .map call"
# p letters
# p modified_letters

meal ={
	protien: "steak",
	starch: "rice",
	veggie: "green beans"
}

utensils = [
	"fork",
	"knife",
	"spoon"
	] 
p utensils
utensils.map! {|thing|  thing.upcase }
p utensils