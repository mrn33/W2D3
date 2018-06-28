class Game
  attr_reader :board, :players, :pot, :current_player, :current_bet
  
  def initialize(board, *players)  
    @board = board
    @players = players
    @current_bet = 0
    @pot = 0
    @current_player = @player.first
  end
  
  def deal
    2.times do |player_index|
      5.times do
        @board[player_index] << Card.random_card
      end
    end
  end
  
  def redeal
    2.times do |player_index|
      discard_amount = current_player.discard
    end
  end
  
  def switch_players!
    if current_player == players[0]
      current_player = players[1]
    else
      current_player = player[0]
    end
  end
  
  
end

class Dealer < Game
  def self.ask_discard
    print 'Which cards do you want to discard: '
    
    gets.chomp.chars.map(&:to_i)
  end
  
  def self.ask_raise_amount
    print "Current bet: #{@current_bet}\n"
    print 'How much do you want to raise: '
    
    gets.chomp.to_i
  end
  
  def self.ask_bet_amount
    print 'How much do you want to bet: '
    
    gets.chomp.to_i
  end
  
  def self.congratulate(player)
    print "Congratulations #{player.name}, you win!"
  end
end
  