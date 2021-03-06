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
    repeat
  end

  def game_set_up
    @first_player = [display.player1, display.player1_symbol]
    @second_player = [display.player2, display.player2_symbol]
    @current_player = first_player
  end

  def user_input(current_player)
    puts ' '
    puts "#{current_player[0]}. Please choose a number from 1 - 9 \n\n"
    move = gets.chomp.to_i
    puts ' '
    if board.valid_move?(move)
      board.update_board(move, current_player[1])
    else
      display.if_invalid(current_player[0])
      user_input(current_player)
    end
  end

  def swtich_player(current_player)
    until board.full?
      user_input(current_player)
      break if board.winner?

      current_player = if current_player == first_player
                         second_player
                       else
                         first_player
                       end
      board.show
    end
    if board.full?
      display.tie
    else
      display.win(current_player[0])
    end

    def repeat
      puts 'Enter |"ok"| to play again or |"no"| to quit the game'
      input = gets.chomp.downcase
      case input
      when 'ok'
        play
      when 'no'
        puts 'Thanks for playing'
      else
        repeat
      end
    end
  end
end
