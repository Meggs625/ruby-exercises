class Pirate
  attr_reader :name, :job, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @num_heinous_acts = 0
    @booty = 0
  end

  def cursed?
    @num_heinous_acts > 2
  end

  def commit_heinous_act
    @num_heinous_acts +=1
  end

  def rob_ship
    @booty += 100
  end
end