class Hand

  @cards = []
  @points = 0

  attr_reader :cards, :points

  def initialize
    cards = []
    points = 0
    @cards = cards
    @points = points
  end

  def add_card(card)
    @cards.push(card)
  end

  def print_cards
    @cards.each do |card|
      puts "  #{card.english_value} of #{card.suit}"
    end
  end

  def calculate_points
    @cards.each do |card|
      @points += card.value
    end
  end
end