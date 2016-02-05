class Player
  STARTING_HEALTH = 60
  DAMAGE = 10

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = STARTING_HEALTH
  end

  # def damage
  #   Kernel.rand(60)
  # end

  def reduce_health
    @health -= DAMAGE
  end


end
