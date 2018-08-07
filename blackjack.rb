#!/usr/bin/env ruby

require './deck'
require './hand'

# class Blackjack

deck = Deck.new
player = Hand.new

def self.deal_card(player, deck, num_of_cards)
  num_of_cards.times do
    player.add_card(deck.draw_card)
  end
end

deal_card(player, deck, 2)

puts 'Your hand contains:'
player.print_cards

player.calculate_points

puts "Total points: #{player.points}"