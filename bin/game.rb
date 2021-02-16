require_relative 'display'
require_relative 'board'
# TicTacToe

class Game
  attr_reader :first_player, :second_player, :board, :current_player, :display

  def initialize
    @board = Board.new
    @first_player = nil
    @second_player = nil
    @current_player = nil
    @display = Intro.new
  end

  def play
    display.introduction
    display.display
    board.show
    user_input
    board.show
    swtich_player
  end

  def user_input
    puts 'Please choose a number from 1 - 9'
    move = gets.chomp.to_i
    board.update_board(move, display.player1_symbol)
  end

  def swtich_player
    user_input until board.full?
  end
end

def current_player(board)
  turn_count(board).even? ? 'X' : 'O'
end

def turn_count(board)
  board.count { |token| %w[X O].include?(token) }
end

playy = Game.new
playy.play
