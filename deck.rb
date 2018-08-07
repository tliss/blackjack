require './card'

# This is a deck of 52 cards (no jokers)
class Deck

  @cards = [nil]

  def initialize
    cards = []
    suits = %w[hearts clubs diamonds spades]

    suits.each do |suit|
      (2..10).each do |value|
        cards.push(Card.new(value, suit, value.to_s))
      end
      cards.push(Card.new(10, suit, 'jack'))
      cards.push(Card.new(10, suit, 'queen'))
      cards.push(Card.new(10, suit, 'king'))
    end
    @cards = cards
  end

  def draw_card
    card_position = rand(@cards.length - 1)
    selected_card = @cards[card_position]
    @cards.delete_at(card_position)
    selected_card
  end

end