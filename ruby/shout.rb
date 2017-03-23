module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

def self.yell_happily(words)
    words + "!!!" + " :)"
  end

end

puts Shout.yell_angrily("SO MAD")
puts Shout.yell_happily("SO HAPPY")

