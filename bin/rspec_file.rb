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
