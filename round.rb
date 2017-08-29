class Round

  def initialize(player1, player2)
    @p1 = player1
    @p2 = player2
    @currentPlayer = @p1
  end

  def question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
    puts "<-------- Question -------->"
    p "#{@currentPlayer.name}, what is #{@num1} + #{@num2}?"
  end

  def responds
    input = gets.chomp.to_i
    if input == @sum
      puts "You're RIGHT!"
    else
      puts "Wrong, the number is #{@answer}"
      @currentPlayer.health -= 1
    end
  end

  def playerSwitch
   @currentPlayer = @currentPlayer == @p2? @p1 : @p2
  end

  def status
    puts "<------Health Status ------>"
    p "Player1 #{@p1.health}/3 VS Player2 #{@p2.health}/3"
  end

  def order
    question
    responds
    playerSwitch
    status
  end

end