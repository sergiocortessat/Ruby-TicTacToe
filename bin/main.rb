#!/usr/bin/env ruby
# frozen_string_literal: true

# require_relative 'board'
require_relative 'display'
require_relative 'game'
require_relative 'board'

# # TicTacToe
# module Intro
#   def introduction
#     puts "Welcome to TicTacToe \n\n"
#     puts 'First, The Player1. Plese enter your name'
#     player1 = gets.chomp.capitalize
#     puts "Your name is #{player1}"
#     puts "#{player1}, please enter your symbol"
#     player1_symbol = gets.chomp.upcase
#     puts "#{player1} your symbol is #{player1_symbol}"
#     puts 'Second, The Player2. Plese enter your name'
#     player2 = gets.chomp.capitalize
#     puts "Your name is #{player2}"
#     puts "#{player2}, please enter your symbol"
#     player2_symbol = gets.chomp.upcase
#     puts "#{player2} your symbol is #{player2_symbol}"
#     while player1_symbol == player2_symbol
#       puts 'try again'
#       player2_symbol = gets.chomp.upcase
#     end
#     puts player1 => player1_symbol
#     puts player2 => player2_symbol
#   end
# end

startt = Game.new
startt.play
