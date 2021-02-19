require_relative '../lib/board'
require_relative '../bin/main'
require_relative '../bin/Rspec.file'
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

describe '#swtich_player' do
  it 'swtiches players' do
  first_player = 'denis'
  second_player = 'ari'
  current_player = first_player
    expect(swtich_player(current_player)).to_not eql(second_player)
  end
end

describe'#user_input' do
  it 'checks valid moves and updates the board' do
    current_player = 2
    expect(user_input(current_player)).to eql(true)
  end
end
