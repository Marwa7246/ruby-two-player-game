class Question
  attr_accessor :num1, :num2, :response

  def initialize
  end

  def ask_question(current_player)
    @num1 = rand(20) + 1
    @num2 = rand(20) + 1
    "#{current_player}: What does #{@num1} plus #{@num2} equal?\n> "
    # >"
  end
  

  def solution
    @num1 + @num2
  end

  def user_response
    @response = gets.chomp
  end
 
  def comparison?
    solution == response.to_i
  end
  
end
