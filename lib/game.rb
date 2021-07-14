class Game

  def attack(attacking_player,damage = 10)
    $player1.damage if attacking_player = $player2
    $player2.damage if attacking_player = $player1
  end

end