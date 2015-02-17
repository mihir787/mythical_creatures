class Dragon

  attr_reader :name, :rider, :color

  def initialize (name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hunger = true
    @eat_counter = 0
  end

  def hungry?
    @hunger
  end

  def eat
    @eat_counter += 1
    if @eat_counter >= 3
      @hunger = false
    else
      @hunger
    end
  end
end
