#!/usr/bin/env ruby
# TicTacToe
puts 'Welcome to TicTacToe'
puts
puts 'First, The Player1. Plese enter your name'
player1 = gets.chomp.capitalize
puts 'Player1, please enter your symbol. either [x/O]'
puts
player1_symbol = gets.chomp.upcase
puts 'Second, The Player2. Plese enter your name'
player2 = gets.chomp.capitalize
puts 'Player2, please enter your symbol. either [X/O]'
puts
player2_symbol = gets.chomp.upcase
puts
puts player1, player1_symbol, player2, player2_symbol
