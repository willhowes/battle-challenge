require 'game'

describe Game do
  subject(:game) { described_class.new }
  describe '#attack' do
    it 'should reduce opponent\'s hp by 10' do
      player_1 = Player.new("Will")
      player_2 = Player.new("Kay")
      expect { game.attack(player_2) }.to change { player_2.hp }.by(-10)
    end
  end
end
