class Werewolf
  attr_reader :name, :location
  def initialize(name, location)
    @name = name
    @location = location
    @human = true
    @wolf = false
  end

  def human?
    @human
  end

  def wolf?
    @wolf
  end

  def change!
    @human = !@human
    @wolf = !@wolf
  end

  def consume!(victim)
    victim.status = :dead
  end
end
