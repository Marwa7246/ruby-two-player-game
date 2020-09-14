class Game
  attr_accessor :current_player

  def initialize
    @current_player = "Player #{rand(2) + 1}"
  end
end