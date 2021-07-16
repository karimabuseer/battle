require 'action'

describe Action do
  it {is_expected.to respond_to(:attack) }
  it {is_expected.to respond_to(:poison) }
  it {is_expected.to respond_to(:hypnotise) }
  it {is_expected.to respond_to(:sleep) }
  it {is_expected.to respond_to(:heal) }
  describe '#attack' do
    xit 'removes 10 by default' do
      expect { subject.attack }.to change {subject.player2.hp }.by(-10)
    end
    xit 'has a value that can be changed' do
      expect { subject.attack(15) }.to change {subject.player2.hp }.by(-15)
    end
  end
  describe '#poison' do
    #Mock player that has an HP, and some way of being poisoned 
    xit 'removes 4hp after 1 turn' do
      expect { subject.attack }.to change {subject.player2.hp }.by(-4)
    end

    xit 'removes 8hp after 2 turns' do
      #Poison attack
      #End turn
      expect()
    end
  end
  describe '#hypnotise' do
  end
  describe '#sleep' do
  end
  describe '#heal' do
  end
end