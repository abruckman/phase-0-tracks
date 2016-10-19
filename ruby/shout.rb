# module Shout
# 	def self.yell_angrily(words)
# 		p words + "! ! !" + " :("
# 	end

# 	def self.yell_happily(words)
# 		p words + " :) " "!!!"
# 	end
# end

# Shout.yell_happily("This is good")
# Shout.yell_angrily("This is bad")

module Shout
	def yell_angrily(words)
		p words + "!!!" + ">:("
	end

 	def yell_happily(words)
 		p words + " :) " "!!!"
 	end
end

class Darn
	include Shout
end

class Shucks
	include Shout
end

darn = Darn.new
shucks = Shucks.new

darn.yell_angrily("consarn it")
darn.yell_happily("hurrah")
shucks.yell_angrily("Daggum")
shucks.yell_happily("yippee")