require_relative '../lib/board'
require_relative '../bin/main'
# require_relative '../lib/display'
# require_relative '../lib/game'

describe Board do
  let(:board) { Board.new }

  describe '#valid_move?' do
    it 'checks the moves' do
      expect(board.valid_move?(10)).to eql(false)
    end
  end

  describe '#update_board' do
    it 'updates the board' do
      expect(board.update_board(2, 'X')).to eql('X')
    end
  end

  describe '#update_board' do
    it 'updates the board' do
      expect(board.update_board(5, 'O')).to eql('O')
    end
  end

  describe '#full?' do
    it 'checks the board' do
      expect(board.full?).to eql(false)
    end
  end

  describe '#winner?' do
    it 'checks the board' do
      expect(board.winner?).to eql(false)
    end
  end
end



def swtich_player(current_player)
  current_player = first_player
    current_player = if current_player == first_player
                       second_player
                     else
                       first_player
                     end
end

describe Game do
  let(:game) { Game.new }

  describe '#swtich_player' do
    it 'swtiches players' do
      first_player = "ari"
      second_player = "aram"
      expect(game.swtich_player(first_player)).to_not eql(second_player)
    end
  end
end
