class Game

  attr_reader :player_1, :player_2
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def receive_damage(player)
    player.hp -= 10
  end
end
