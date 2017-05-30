class NumberGuessingGame
 
  def initialize
    # @rand = rand(10)
    @rand = 6
  end

  def guess(num)
  
    if @rand < num 
       "Too low"
    elsif @rand > num
      "Too high"
    elsif @rand == num
      "You got it!" 
    end  

  end
end


# Pruebas

game = NumberGuessingGame.new

p game.guess(5) == "Too low"

p game.guess(8) == "Too high"

p game.guess(7) == "Too high"

p game.guess(6) == "You got it!"