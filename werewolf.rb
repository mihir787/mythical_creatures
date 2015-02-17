class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human_status = true
    @change_counter = 0
  end

  def human?
    if @change_counter % 2 == 0
      true
    else
      false
    end
  end

  def respond_to?(action)
    true
  end

  def change!
    @change_counter += 1
  end

  def werewolf?
    if @change_counter % 2 != 0
      true
    else
      false
    end
  end
end
