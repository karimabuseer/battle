require 'game'

describe Game do
  let(:subject) { described_class.new(Player.new('Karim'), Player.new('Pav'))}
  it { is_expected.to respond_to(:player1) }
  it 'pulls information from player' do
    expect(subject.player2.hp).to eq(30)
  end
  describe '#attacked' do
    it 'removes 10 by default' do
      expect { subject.attack(2) }.to change {subject.player2.hp }.by(-10)
    end
  end
end