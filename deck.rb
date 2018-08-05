require './card'

# This is a deck of 52 cards (no jokers)
class Deck

  @cards = []

  def initialize
    cards = []

    (1..13).each do |value|
      heart = Card.new(value, "hearts")
      club = Card.new(value, "clubs")
      diamond = Card.new(value, "diamonds")
      spade = Card.new(value, "spades")

      cards.push(heart).push(club).push(diamond).push(spade)

      @cards = cards
    end
  end

  def draw_card
    card_position = rand(@cards.length - 1)
    selected_card = @cards[card_position]
    @cards.delete_at(card_position)
    selected_card
  end

end