class Dragon
  attr_reader :name, :color, :rider

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hasEaten = 0
  end

  def hungry?
    if @hasEaten <= 2
      true
    else
      false
    end
  end

  def eat
    @hasEaten +=1
  end
end
