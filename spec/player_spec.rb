require 'player'
describe Player do
  let(:testplayer) { Player.new('Karim')}
  describe '#name' do
    it 'returns name' do
      expect(testplayer.name).to eq 'Karim'
    end
  end
end