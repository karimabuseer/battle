require_relative 'player'
class Game
  attr_reader :player1, :player2, :player_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = 1
  end

  def attack(target,damage = 10)
    @player1.wound(damage) if target == 1
    @player2.wound(damage) if target == 2
  end

end