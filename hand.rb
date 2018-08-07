class Hand

  @cards = []
  @points = 0
  @name = ""

  attr_reader :cards, :points, :name

  def initialize(name)
    cards = []
    points = 0
    @cards = cards
    @points = points
    @name = name
  end

  def add_card(card)
    @cards.push(card)
    calculate_points
  end

  def print_cards
    @cards.each do |card|
      puts "  #{card.english_value} of #{card.suit}"
    end
  end

  def calculate_points
    @points = 0
    @cards.each do |card|
      @points += card.value
    end
  end
end