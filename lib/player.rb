class Player

  attr_reader :name
  attr_accessor :hp

  HP = 60
  def initialize(name)
    @name = name
    @hp = HP
  end
end
