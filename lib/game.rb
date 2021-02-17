require_relative 'display'
require_relative 'board'
# TicTacToe

class Game
  attr_reader :first_player, :second_player, :board, :current_player

  def initialize
    @board = Board.new
    @first_player = nil
    @second_player = nil
    @current_player = nil
    # @display = Intro.new
  end

  def play
    introduction
    display
    show
    game_set_up
    swtich_player(current_player)
  end

  def game_set_up
    @first_player = [$player1, $player1_symbol]
    @second_player = [$player2, $player2_symbol]
    @current_player = first_player
  end

  def user_input(current_player)
    move = user_input_text(current_player[0])
    if board.valid_move?(move)
      board.update_board(move, current_player[1])
    else
      if_invalid(current_player[0])
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
      show
    end
    if board.full?
      tie
    else
      win(current_player[0])
    end
  end
end
