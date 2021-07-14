class Player
  attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 30
  end

  def wound(damage)
    @hp -= damage
  end
end