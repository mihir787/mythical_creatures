class Wizard
  attr_reader :name

  def initialize(name, bearded = true)
    @name = name
    @bearded = bearded
  end

  def bearded?
    if @bearded == true
      @bearded
    else
      false
    end
  end
end
