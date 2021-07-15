require_relative 'player'
class Game
  attr_reader :player1, :player2, :player_turn, :winner
  def self.create(player1, player2)
    @game ||= Game.new(player1, player2)
  end
  
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player_turn = 1
    @winner = nil
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

  def check_winner
    winner if won?
  end

  def winner
    @player1.hp > @player2.hp ? (@winner = @player1.name) : (@winner = @player2.name) if won?
  end

end