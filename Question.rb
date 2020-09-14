class Question
  attr_accessor :num1, :num2, :response

  def initialize
  end

  def ask_question
    @num1 = rand(19) + 1
    @num2 = rand(19) + 1
    " What does #{@num1} plus #{@num2} equal?"
  end

  

  def solution
    @num1 + @num2
  end

  def user_response
    @response = gets.chomp
  end

  def comparison
    if solution == response.to_i
      puts "Player: Yes! You are Correct." 
    else
      puts "Seriously? NO!"
    end
  end
  
end

question=Question.new


puts question.ask_question

question.user_response

question.comparison


