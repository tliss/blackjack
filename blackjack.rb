#!/usr/bin/env ruby

require './deck'
require './hand'

puts 'What is your name?'
name = gets.chomp

deck = Deck.new
players_hand = Hand.new(name)

def self.deal_card(players_hand, deck, num_of_cards)
  num_of_cards.times do
    players_hand.add_card(deck.draw_card)
  end
end

def self.show_cards_and_points(player)
  puts "#{player.name}'s cards:"
  player.cards.each do |card|
    puts "  #{card.english_value} of #{card.suit}"
  end
  puts "Total points: #{player.points}"
end

deal_card(players_hand, deck, 2)

show_cards_and_points(players_hand)

