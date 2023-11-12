require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
#card objects go here
cards = Card.new(suit, v, r)
player1 = Player.new("Megan", deck1)    
player2 = Player.new("Aurora",deck2)
deck = Deck.new(cards)
turn = Turn.new(player1, player2)
 
require 'pry' ; binding.pry
#do I need a `def` here?
def instantiate_cards
  cards = []

  Card::VALUES.each do |v, r|
    Card::SUITS.each do |suit|
      cards << Card.new(suit, v, r)
    end
  end
cards
end

def shuffled_deck #call 'shuffled' not 'cards'
  cards.shuffle #!
end

def split_the_shuffled_deck
  # deck1 << deck.cards[0..25]
  # deck2 << deck.cards[26..51]
  # or
  # deck1.concat(deck.cards[0..25])
  # deck2.concat(deck.cards[26..51])
 

end

# --> split it

# --> make deck to pass to player
# --> two players
# Player.new(name, deck)
# --> start a turn


# puts "Welcome to War! (or Peace) This game will be played with 52 cards.
# The players today are Megan and Aurora.
# Type 'GO' to start the game!"