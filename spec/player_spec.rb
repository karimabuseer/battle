require 'player'
describe Player do
  let(:testplayer) { Player.new('Karim')}
  describe '#name' do
    it 'returns name' do
      expect(testplayer.name).to eq 'Karim'
    end
  end

  describe '#attacked' do
    it 'removes 10 by default' do
      expect { testplayer.attacked }.to change {testplayer.hp }.by(-10)
    end
  end
end