class Pirate
  attr_reader :name, :job

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed_status = false
    @heinous_act_counter = 0
  end

  def cursed?
    @cursed_status
  end

  def commit_heinous_act
    @heinous_act_counter +=1
    if @heinous_act_counter >=3
      @cursed_status = true
    else
      @cursed_status
    end
  end
end
