require_relative 'player'

class Hanoi
  attr_accessor :towers
  
  def initialize(player)
    @player = player
    @towers = [[3, 2, 1], [], []]
  end
  
  def display
    @towers.each do |tower|
      2.downto(0) do |disk_index|
        puts tower[disk_index]
      end
    end
    puts
  end
  
  def move (start_index, end_index)
    @towers[end_index] << @towers[start_index].pop
  end
  
  def get_move
    while true
      start_index, end_index = @player.prompt_user
      break if valid_move?(start_index, end_index)
    end
    move(start_index, end_index)
  end
  
  def won?
    @towers[2] == [3, 2, 1]
  end
  
  def valid_move?(start_index, end_index)
    end_is_empty = @towers[end_index] == []
    end_is_larger = !end_is_empty && @towers[start_index].last < @towers[end_index].last
    return true if end_is_empty || end_is_larger
    raise 'Not valid'
  end
  
  def play
    until won?
      p @towers
      # display
      move
    end
    # display
    return 'Congrats'
  end
end

if __FILE__ == $PROGRAM_NAME
  player = Player.new
  hanoi = Hanoi.new(player)
  hanoi.play
end