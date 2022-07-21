# frozen_string_literal: true

module Condtion_module
  def three_across_check
    @board.each do |i|
      if i.all? { |j| j == 'X' }
        $winner = 'X'
        $turn_count = 10

      elsif i.all? { |j| j == 'O' }
        $turn_count = 10
        $winner = 'O'
      end
    end
  end


  def three_down_check
    data = @board.flatten
    data.each_with_index do |v, i|
      if v == 'X' && data[i + 3] == 'X' && data[i + 6] == 'X'
        $winner = 'X'
        $turn_count = 10

      elsif v == 'O' && data[i + 3] == 'O' && data[i + 6] == 'O'
        $winner = 'O'
        $turn_count = 10
      end
    end
  end



end
