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
      subject.attack(2)
      expect(subject.player_turn).to eq(2)
    end
  end
end