class Player

  attr_reader :name, :hp
  HP = 60
  def initialize(name)
    @name = name
    @hp = HP
  end

  def receive_damage
    @hp -= 10
  end
end
