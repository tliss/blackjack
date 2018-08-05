require './deck'
require './hand'

class Blackjack
  deck = Deck.new
  players_hand = Hand.new

  players_hand.add_card(deck.draw_card)
  players_hand.add_card(deck.draw_card)

  puts 'Your hand contains:'
  players_hand.print_cards

  players_hand.calculate_points

  puts "Total points: #{players_hand.points}"
end