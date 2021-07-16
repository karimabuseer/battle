require_relative 'player'
require_relative 'action'
class Game
  attr_reader :player1, :player2, :player_turn, :winner
  def self.create(player1, player2)
    p 'creating new game...'
     @game = Game.new(Player.new(player1), Player.new(player2))
  end
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = 1
    @winner = nil
    @action = Action.new
  end

  def attack(damage = 10)
    if @player_turn == 1
      @player2.wound(damage) ; @player_turn = 2
    elsif @player_turn == 2
      @player1.wound(damage) ; @player_turn = 1
    end
  end

  def self.instance
    @game
  end

  def won?
    @player1.hp == 0 || @player2.hp == 0
  end

  def winner
    @player1.hp > @player2.hp ? (@winner = @player1.name) : (@winner = @player2.name)
  end

end