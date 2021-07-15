require_relative 'player'
class Game
  attr_reader :player1, :player2, :player_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = 1
  end

  def attack(damage = 10)
    (@player1.wound(damage) ; @player_turn = 1) if @player_turn == 2
    (@player2.wound(damage) ; @player_turn = 2) if @player_turn == 1
  end

end