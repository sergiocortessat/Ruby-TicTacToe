class Board
  attr_reader :cells

  WINNING_COMBOS = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
    [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]
  ].freeze
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def update_board(number, symbol)
    $playy.cells[number - 1] = symbol
  end

  def valid_move?(number)
    $playy.cells[number - 1] == number
  end

  def full?
    $playy.cells.all? { |cell| %w[X O].include?(cell) }
  end

  def winner?
    WINNING_COMBOS.any? do |combo|
      [$playy.cells[combo[0]], $playy.cells[combo[1]], $playy.cells[combo[2]]].uniq.length == 1
    end
  end
end
