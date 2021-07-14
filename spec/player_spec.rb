require 'player'
describe Player do
  describe '#.name' do
    let(:testplayer) { Player.new('Karim')}
    it 'returns name' do
      expect(testplayer.name).to eq 'Karim'
    end
  end
end