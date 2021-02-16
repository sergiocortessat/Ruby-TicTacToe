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
    puts "First, The Player1. Plese enter your name\n\n"
  end

  def display
    @player1 = gets.chomp.capitalize
    puts ' '
    puts "Your name is #{@player1}\n\n"
    puts "#{@player1}, please enter your symbol |X| or |O|]\n\n"
    @player1_symbol = gets.chomp
    @player1_symbol = @player1_symbol.upcase
    puts ' '
    until %w[X O].include?(@player1_symbol)
      puts "Try again please, either X or O\n\n"
      @player1_symbol = gets.chomp.upcase
    end

    puts "#{@player1} your symbol is #{@player1_symbol}\n\n"
    puts "Second, The Player2. Plese enter your name\n\n"
    @player2 = gets.chomp.capitalize
    puts "Your name is #{player2}\n\n"
    @player2_symbol = if player1_symbol == 'X'
                        'O'
                      else
                        'X'
                      end
    puts "#{player2} your symbol is #{player2_symbol}\n\n"
  end

  def tie
    puts 'Its a draw :))'
  end

  def win(name)
    puts "Congragulations #{name}"
  end

  def if_invalid(name)
    puts "Invalid move #{name}. Please enter a valid move"
  end

  def user_input_text(name)
    puts ' '
    puts "#{name}. Please choose a number from 1 - 9 \n\n"
    move = gets.chomp.to_i
    puts ' '
    move
  end
end
