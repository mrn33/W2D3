class Player
  def prompt_user
    print "Enter start tower index: "
    start_pos = gets.chomp.to_i
    print "Enter end tower index: "
    end_pos = gets.chomp.to_i
    return [start_pos, end_pos]
  end
  
end