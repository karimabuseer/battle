class Player
  attr_reader :name, :hp
  def initialize(name)
    @name = name
    @hp = 30
  end

  def attacked(damage = 10)
    @hp -= damage
  end
end