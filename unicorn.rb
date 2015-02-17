class Unicorn
  attr_reader :name
  attr_reader :color

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def white?
    if @color == "white"
      true
    else
      false
    end
  end

  def say(string)
    "**;* #{string} **;*"
  end


end
