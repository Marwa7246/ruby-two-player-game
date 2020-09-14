class Game
  attr_accessor :current_player

  def initialize
    @current_player = "Player #{rand(2) + 1}"
  end

  def switch_user(name)
    if name == "Player 1" 
      @current_player = "Player 2"
    else
      @current_player = "Player 1"
    end
  end

  def print_result(p1, p2, question)
    print "#{current_player}: " 
    if question.comparison?
      puts "Yes! You are Correct."
    else       
      puts "Seriously? NO!"
      if p1.name == current_player 
        p2.decrease_lives
      else 
        p1.decrease_lives
      end
    end

  end

  def p1_win?(p1)
    p1.lives > 0 
  end

  def end_game(p1, p2)
    puts "#{current_player} wins with a score of #{(p1_win?(p1) && p1.lives) || (!p1_win?(p1) && p2.lives)}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"  
  end

  def start_game(p1, p2, question)
    
    print question.ask_question(current_player)
    question.user_response
    print_result(p1, p2, question)
    if (p1.lives > 0 && p2.lives > 0)
      puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
      puts "-----NEW TURN-----"
      switch_user(current_player)
      start_game(p1, p2, question)
    else
      end_game(p1, p2)    
    end
  end

end