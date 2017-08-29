require_relative "player"
require_relative "round"

class Game

  def initialize
    @p1 = Player.new("Player1", 3)
    @p2 = Player.new("Player2", 3)
    @round = Round.new(@p1, @p2)
  end

  def playing
    until @p1.health < 1 || @p2.health < 1
      @round.order
    end
    puts "<--------GAME OVER--------->"
  end
end

