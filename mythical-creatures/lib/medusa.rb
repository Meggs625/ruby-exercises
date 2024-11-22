require './lib/person.rb'

class Medusa
  
  attr_reader :name, :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if(@statues.length == 3)
      released_victim = @statues.shift
      released_victim.unstoned
    end 
      victim.get_stoned
      statues << victim
    
  end
end