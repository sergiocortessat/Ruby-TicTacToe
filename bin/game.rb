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
    game_set_up
    swtich_player(current_player)
  end

  def game_set_up
    @first_player = display.player1_symbol
    @second_player = display.player2_symbol
    @current_player = first_player
  end

  def user_input(current_player)
    puts "#{current_player}Please choose a number from 1 - 9"
    move = gets.chomp.to_i
    board.update_board(move, current_player)
    board.show
  end

  def swtich_player(current_player)
    until board.full?
      user_input(current_player)
      current_player = if current_player == first_player
                         second_player
                       else
                         first_player
                       end
      board.show
      break if board.winner?
    end
    if board.full?
      display.tie
    else
      display.win
    end
  end

  # def swtich
  #   if current_player == first_player
  #     second_player
  #   else
  #     first_player
  #   end
  # end

  # def current_player
  #   turn_count.even? ? 'X' : 'O'
  # end

  # def turn_count
  #   count = 0
  #   board.cells.map { |x| x == 'X' || x == 'O' ? count += 1 : count}
  #   count
  # end
end

# playy = Game.new
# playy.play
