module Shout
	def self.yell_angrily(words)
		p words + "! ! !" + " :("
	end

	def self.yell_happily(words)
		p words + " :) " "!!!"
	end
end

Shout.yell_happily("This is good")
Shout.yell_angrily("This is bad")