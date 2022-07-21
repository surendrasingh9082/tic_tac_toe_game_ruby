# frozen_string_literal: true
require 'rubocop'
require './condition_module'
require './display_module'
require './player_choice'
require './player_conditoin'
require './declare_result'
require_relative 'three_condi'

class Main_class
  include Dec_result
  include Condtion_module
  include Display_module


  puts 'Wellcome to our game'
  $turn_count = 1
  $winner = 0
  def initialize
    puts 'Enter First Player Name'
    $player_one_name = gets.chomp.to_i
    puts 'Enter Second Player Name'
    $player_two_name = gets.chomp.to_i
    @board = Array.new(3) { Array.new(3, '_') }
  end

  def play_game_method
    puts 'empty battlefield!'
    display_board_console(@board)

    while $turn_count < 10
      player_turn_condition($turn_count)
      three_across_check
      three_down_check
      three_diagonal_check
      display_board_console(@board)
    end
    declare_result($winner)
  end
end

puts 'enter two numbers with space :'
puts '0 0 | 0 1 | 0 2'
puts '1 0 | 1 1 | 1 2'
puts '2 0 | 2 1 | 2 2'

obj = Main_class.new
obj.play_game_method
