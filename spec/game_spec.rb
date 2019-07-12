require 'game'

describe Game do
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }
  # subject(:game) { described_class.new(player_1, player_2) }

  it 'accepts two players on initialization' do
    game = Game.new(player_1, player_2)
    expect(game.player_1).to eq player_1
    expect(game.player_2).to eq player_2
  end

  describe '#current_turn' do
    it "Returns whose turn it is" do
      game = Game.new(player_1, player_2)
      expect(game.current_turn).to eq(player_1)
    end
  end

  describe '#switch_turn' do
    it "switches whos turn it is" do
      game = Game.new(player_1, player_2)
      expect { game.switch_turn }.to change { game.current_turn }.from(player_1).to(player_2)
    end
  end

  describe '#finished?' do
    it 'returns true when a player has 0 points' do
      game = Game.new(player_1, player_2)
      allow(player_1).to receive(:hp).and_return(0)
      expect(game.finished?).to eq true
    end

  end
end
