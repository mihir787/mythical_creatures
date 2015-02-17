class Medusa
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def respond_to?(item)
    true
  end

  def stare(victim)
    @statues.push(victim)
    victim.stone_status = true
  end
end

class Person
  attr_reader :name
  attr_accessor :stone_status

  def initialize(name)
    @name = name
    @stone_status = false
  end

  def stoned?
    @stone_status
  end
end
