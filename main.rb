require './Player'
require './Question'
require './Game'

player1 = Player.new('player1')
game = Game.new
question = Question.new
# puts game.current_player


puts question.ask_question(game.current_player)

question.user_response

question.comparison(game.current_player)