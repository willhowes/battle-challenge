class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    if @current_turn == @player_1
      @current_turn = @player_2
    else
      @current_turn = @player_1
    end
  end

  def opponent
    if @current_turn == @player_1
      @player_2
    else
      @player_1
    end
  end

  def finished?
    true if @player_1.hp == 0 || @player_2.hp == 0
  end
end
