require 'game'

describe Game do
  let(:subject) { described_class.new(Player.new('Karim'), Player.new('Pav'))}
  it { is_expected.to respond_to(:player1) }
  it 'pulls information from player' do
    expect(subject.player2.hp).to eq(30)
  end
  it 'defaults to turn 1' do 
    expect(subject.player_turn).to eq(1)
  end
  describe '#attacked' do
    it 'removes 10 by default' do
      expect { subject.attack }.to change {subject.player2.hp }.by(-10)
    end
    it 'causes player turn to change' do 
      subject.attack
      expect(subject.player_turn).to eq(2)
    end
    it 'causes different players to take damage on different turns' do
      expect { subject.attack }.to change {subject.player2.hp }.by(-10)
      expect { subject.attack }.to change {subject.player1.hp }.by(-10)
    end
    it 'causes turns to change twice' do
      expect(subject.player_turn).to eq(1)
      subject.attack
      expect(subject.player_turn).to eq(2)
      subject.attack
      expect(subject.player_turn).to eq(1)
    end
  end
  describe '#set_winner' do
    it 'sets winner when opponent hits 0hp' do
      subject.attack(30)
      expect(subject.winner).to eq('Karim')
    end 
  end
end