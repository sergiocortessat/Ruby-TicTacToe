require_relative '../lib/board'
# game methods

def swtich_player(current_player)
  first_player = 'ari'
  second_player = 'aram'
  current_player = first_player
  current_player = if current_player == first_player
                     second_player
                   else
                     first_player
                   end
end

# def user_input(current_player)
#   board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
#   board = Board.new
#   if board.valid_move?(2)
#     board.update_board(2, 'X')
#   else
#     if_invalid('denis')
#     user_input(current_player)
#   end
# end
