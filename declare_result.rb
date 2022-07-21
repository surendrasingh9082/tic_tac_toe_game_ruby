 module Dec_result
  def declare_result(symbol)
    case symbol
    when 'O'
      puts "#{$player_one_name} win the game!"
    when 'X'
      puts "#{$player_two_name} win the game!"
    else
      puts "It's a tie!"
    end
  end

end
