require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
#card objects go here

deck = Deck.new(Card.instantiated_cards)
require 'pry' ; binding.pry

deck.cards.shuffle!

# --> split it
# --> make deck to pass to player
deck1 = []
deck2 = []

deck1 << deck.cards[0..25]
deck2 << deck.cards[26..51]
# --> two players

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

turn = Turn.new(player1, player2)

# --> start a turn

puts "Welcome to War! (or Peace) This game will be played with 52 cards.
The players today are Megan and Aurora.
Type 'GO' to start the game!"