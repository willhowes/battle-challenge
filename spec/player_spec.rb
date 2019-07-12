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
  # describe "#receive_damage" do
  #   it "a player should receive damage when attacked" do
  #     allow(player_2).to receive(:hp) { 60 }
  #     player_test = player_2.hp - 10
  #     expect(player_test).to eq 50
  #   end
  # end
end
