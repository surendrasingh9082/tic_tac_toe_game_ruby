# frozen_string_literal: true
def player_choice_enter(player, symbol)
  puts "#{$player} enter (0..2)  by a space"
  input = gets.chomp
  input_array = input.split
  coord_one = input_array[0].to_i
  coord_two = input_array[1].to_i

  until input.match(/\s/) && coord_one.between?(0,
                                                2) && coord_two.between?(0, 2) && @board[coord_one][coord_two] == '_'

    puts 'enter valid value'
    input = gets.chomp
    input_array = input.split
    coord_one = input_array[0].to_i
    coord_two = input_array[1].to_i
  end
  add_to_console_board(coord_one, coord_two, symbol)
end
