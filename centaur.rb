class Centaur
  attr_reader :name, :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @run_counter = 0
    @shoot_counter = 0
    @position_status = "standing"
  end

  def shoot
    @shoot_counter += 1
    if cranky? || @position_status == "laying"
      "NO!"
    else
      "Twang!!!"
    end
  end

  def run
    @run_counter += 1
    if cranky? || @position_status == "laying"
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @run_counter + @shoot_counter >= 3
      true
    else
      false
    end
  end

  def standing?
    if @position_status == "standing"
      true
    else
      false
    end
  end

  def laying?
    if @position_status == "laying"
      true
    else
      false
    end
  end

  def respond_to?(action)
    true
  end


  def sleep
    if standing?
      "NO!"
    else
      @run_counter = 0
      @shoot_counter = 0
    end
  end

  def lay_down
    @position_status = "laying"
  end

  def stand_up
    @position_status = "standing"
  end
end
