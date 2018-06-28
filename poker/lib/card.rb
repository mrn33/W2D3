class Card
  CARD_NUMS = (1..10).to_a
  CARD_SUIT = [:H, :D, :C, :S]
  
  def initialize(suit, number)
    @suit = suit
    @number = number
    @dealt_cards = []
  end
  
  def self.random_card
    while true
      card = Card.new(CARD_NUMS.sample, CARD_SUIT.sample)
      return card unless card.dealt?
    end
  end 
  
  private 
  def dealt?
    @dealt_cards.include?(self)
  end 
  
end