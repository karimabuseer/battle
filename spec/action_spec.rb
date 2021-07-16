require 'action'

describe Action do
  it {is_expected.to respond_to(:attack) }
  it {is_expected.to respond_to(:poison) }
  it {is_expected.to respond_to(:hypnotise) }
  it {is_expected.to respond_to(:sleep) }
  it {is_expected.to respond_to(:heal) }
  describe '#attack' do
  end
  describe '#poison' do
  end
  describe '#hypnotise' do
  end
  describe '#sleep' do
  end
  describe '#heal' do
  end
end