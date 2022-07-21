# frozen_string_literal: true

def player_turn_condition(turn)
  if turn.odd?
    player_choice_enter($player_one_name, 'O')
  else
    player_choice_enter($player_two_name, 'X')
  end
end

def add_to_console_board(coord_one, coord_two, symbol)
  @board[coord_one][coord_two] = symbol
  $turn_count += 1
end
