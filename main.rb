require './Player'
require './Question'
require './Game'

player1 = Player.new('Player 1')
player2 = Player.new('Player 2')

game = Game.new
question = Question.new

game.start_game(player1, player2, question)