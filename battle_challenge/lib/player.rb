class Player
  STARTING_HEALTH = 60

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = STARTING_HEALTH
  end

  def attack(player)
    player.reduce_health
  end

  def reduce_health
    @health -= 10
  end


end
