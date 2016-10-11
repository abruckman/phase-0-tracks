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

# meal ={
# 	protien: "steak",
# 	starch: "rice",
# 	veggie: "green beans"
# }

# utensils = [
# 	"fork",
# 	"knife",
# 	"spoon"
# 	] 
# p utensils
# utensils.map! {|thing|  thing.upcase }
# p utensils

bushes = {
	a: 5,
	b: 14,
	c: 21,
	d: 36
}

lucky = [5, 14, 21, 36]

# p lucky
# lucky.delete_if { |num| num <= 15 }
# p lucky

# p bushes
# bushes.delete_if { |letter, number| number <=15 }
# p bushes

p lucky
lucky.keep_if { |num| num >= 15}
p lucky