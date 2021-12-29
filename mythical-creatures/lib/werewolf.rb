class Werewolf
  attr_reader :name, :location
  def initialize(name, location)
    @name = name
    @location = location
    @human = true
    @wolf = false
    @hungry = false
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
    @hungry = true
  end

  def consume!(victim)
    if @wolf == true
      victim.status = :dead
      @hungry = false
    end
  end

  def hungry?
    @hungry
  end
end
