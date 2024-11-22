class Person
  attr_reader :name

  def initialize(name)
    @name = name
    @isStoned = false
  end

  def stoned? 
    @isStoned
  end 

  def get_stoned
    @isStoned = true
  end

  def unstoned 
    @isStoned = false
  end
end