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

  describe '#receive_damage' do
    it 'Reduces hp by 10 when player attacked' do
      expect { player.receive_damage }.to change{ player.hp }.by(-10)
    end
  end
end
