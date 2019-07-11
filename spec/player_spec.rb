require 'player'

describe Player do
  subject(:player) { described_class.new("Will") }
  describe '#name' do
    it 'returns the player\'s name' do
      expect(player.name).to eq "Will"
    end
  end
  describe '#HP' do
    it 'Starts at 60' do
      expect(player.hp).to eq 60
    end
  end
end
