class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name=name
    @lives=3
  end

  def decrease_lives
    @lives -=1
  end
  
end

# player1=Player.new('player1')
# puts player1
