class Player

  attr_reader :name
  attr_accessor :health

  def initialize(name, health)
    @name = name
    @health = health
  end
end