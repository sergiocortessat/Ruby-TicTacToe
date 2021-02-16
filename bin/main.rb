#!/usr/bin/env ruby

# require_relative 'board'
require_relative 'display'
require_relative 'game'
require_relative 'board'

def play_new_game
  startt = Game.new
  startt.play
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
