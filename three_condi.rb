def three_diagonal_check
    center_val = @board[1][1]
    if %w[X O].include?(center_val)
      if @board[0][0] && @board[2][2] == center_val
        $winner = center_val
        $turn_count = 10
     
      elsif @board[2][0] && @board[0][2] == center_val
        $winner = center_val
        $turn_count = 10
      end
    end
  end


