class Player
  
  def initialize(name)
    @name = name
  end
  
  def bet
    bet_amount = Dealer.ask_bet_amount
  end
  
  def fold
    
  end
  
  def raise
  end
  
  def check
  end
  
  def discard
    discarding_cards = Dealer.ask_discard
  end
  
end




# 
# p1 = Player.new('aa')
# p2 = Player.new('bb')
# game = Game.new(board, p1,p2)

# Your turn
# 1. fold
# 2. bet
# 3. check
# 
# user input: 2
# 
# how much

# Q J K A 10
# 1 2 3 4 5
# 
# 2 5