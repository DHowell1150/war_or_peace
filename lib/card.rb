class Card
  attr_reader :suit,  :value,  :rank
  #Constants provide a way to define values that are intended to remain constant throughout the execution of a program. Great for team projects
  VALUES = {
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    9 => 9,
    10 => 10,
    "Jack" => 11,
    "Queen" => 12,
    "King" => 13,
    "Ace" => 14
  }

  SUITS = [
  :diamond,
  :heart,
  :spade,
  :club
  ]
  
  def initialize(suit, value, rank)
    @suit = suit
    @value = value
    @rank = rank
  end
  
  def self.instantiated_cards
    cards = []
    Card::VALUES.each do |value, rank|
      Card::SUITS.each do |suit|
        cards << Card.new(suit, value, rank)
      end
    end
  
  cards
  end

end