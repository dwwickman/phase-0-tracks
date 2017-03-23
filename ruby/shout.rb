# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

# def self.yell_happily(words)
#     words + "!!!" + " :)"
#   end

# end

# puts Shout.yell_angrily("SO MAD")
# puts Shout.yell_happily("SO HAPPY")


module Shout

	def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end

  def yell_happily(words)
    words.upcase + "!!!" + " :("
  end
end

class Football
	include Shout
end

class Basketball
	include Shout
end

football_player = Football.new

puts football_player.yell_happily("I got a touchdown")
puts football_player.yell_angrily("I Threw an Interception")

basketball_player = Basketball.new

puts basketball_player.yell_happily("I made a basketball")
puts basketball_player.yell_angrily("I turned the ball over")
