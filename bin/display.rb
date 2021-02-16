# TicTacToe
class Intro
  attr_reader :player1, :player1_symbol, :player2, :player2_symbol

  def inititialize(_player1, _player1_symbol, _player2, _player2_symbol)
    @player1 = nil
    @player1_symbol = nil
    @player2 = nil
    @player2_symbol = nil
  end

  def introduction
    puts "Welcome to TicTacToe \n\n"
    puts 'First, The Player1. Plese enter your name'
  end

  def display
    @player1 = gets.chomp.capitalize
    puts "Your name is #{@player1}"
    puts "#{@player1}, please enter your symbol |X| or |O|"
    @player1_symbol = gets.chomp
    @player1_symbol = @player1_symbol.upcase
    until %w[X O].include?(@player1_symbol)
      puts 'Try again please, either X or O'
      @player1_symbol = gets.chomp.upcase
    end

    puts "#{@player1} your symbol is #{@player1_symbol}"
    puts 'Second, The Player2. Plese enter your name'
    @player2 = gets.chomp.capitalize
    puts "Your name is #{player2}"
    player2_symbol = if player1_symbol == 'X'
                       'O'
                     else
                       'X'
                     end
    puts "#{player2} your symbol is #{player2_symbol}"
  end
end
