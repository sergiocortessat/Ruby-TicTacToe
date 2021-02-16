#!/usr/bin/env ruby

require_relative '../lib/display'

require_relative '../lib/game'

require_relative '../lib/board'

def play_new_game
  startt = Game.new

  startt.play

  repeat
end

def introduction
  puts "Welcome to TicTacToe \n\n"

  puts "Player1. Please enter your name\n\n"
end

def display
  $player1 = gets.chomp.capitalize

  puts ' '

  puts "Your name is #{$player1}\n\n"

  puts "#{$player1}, please enter your symbol |X| or |O|]\n\n"

  $player1_symbol = gets.chomp

  $player1_symbol = $player1_symbol.upcase

  puts ' '

  until %w[X O].include?($player1_symbol)

    puts "Try again please, either X or O\n\n"

    $player1_symbol = gets.chomp.upcase

  end

  puts "#{$player1} your symbol is #{$player1_symbol}\n\n"

  puts "The Player2. Please enter your name\n\n"

  $player2 = gets.chomp.capitalize

  until $player2 != $player1

    puts 'Player2, Please select a different name'

    $player2 = gets.chomp.capitalize

  end

  puts "Your name is #{$player2}\n\n"

  $player2_symbol = if $player1_symbol == 'X'

                      'O'

                    else

                      'X'

                    end

  puts "#{$player2} your symbol is #{$player2_symbol}\n\n"
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

def repeat
  puts 'Enter |"ok"| to play again or |"no"| to quit the game'

  input = gets.chomp.downcase

  case input

  when 'ok'

    play_new_game

  when 'no'

    puts 'Thanks for playing'

  else

    repeat

  end
end

play_new_game
