require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(:player_1, :player_2) }

  it 'accepts two players on initialization' do
    expect(game.player_1).to eq :player_1
    expect(game.player_2).to eq :player_2
  end

  describe "#receive_damage" do
    it "a player should receive damage when attacked" do
      allow(player_2).to receive(:hp) { 60 }
      player_test = player_2.hp - 10
      expect(player_test).to eq 50
    end
  end
end
