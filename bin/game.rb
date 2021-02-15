require_relative 'display'
require_relative 'board'
# TicTacToe

class Game
  include Intro
  attr_reader :first_player, :second_player, :board, :current_player

  def initialize
    @board = Board.new
    @first_player = nil
    @second_player = nil
    @current_player = nil
  end

  def play
    introduction
    board.show
  end
end

playy = Game.new()
playy.play
