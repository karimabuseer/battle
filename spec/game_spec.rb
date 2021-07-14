require 'game'

describe Game do
  describe '#attacked' do
    it 'removes 10 by default' do
      expect { subject.attack($player1) }.to change {$player2.hp }.by(-10)
    end
  end
end