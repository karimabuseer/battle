require_relative 'action'

class Player
  attr_reader :name, :hp
  def initialize(name)
    @action = Action.new
    @name = name
    @hp = 30
  end

  def wound(damage)
    @hp -= damage
  end
end