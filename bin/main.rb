#!/usr/bin/env ruby

require_relative '../lib/display'
require_relative '../lib/game'
require_relative '../lib/board'

def play_new_game
  startt = Game.new
  $playy = Board.new
  startt.play
  # repeat
end

$playy = Board.new

def show
  puts "#{$playy.cells[0]} | #{$playy.cells[1]} | #{$playy.cells[2]}"
  puts '---+---+---'
  puts "#{$playy.cells[3]} | #{$playy.cells[4]} | #{$playy.cells[5]}"
  puts '---+---+---'
  puts "#{$playy.cells[6]} | #{$playy.cells[7]} | #{$playy.cells[8]}"
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
  'Its a draw :))'
end

def win(name)
  puts "Congragulations #{name}"
end

def if_invalid(name)
  puts "Invalid move #{name}. Please enter a valid move"
end

def user_input_text(name)
  puts "#{name}. Please choose a number from 1 - 9 \n\n"
  move = gets.chomp.to_i
  puts ' '
  move
end

def ok
  true
end
# play_new_game
