# This is a single card
class Card

  attr_accessor :value, :suit, :english_value

  def initialize(value, suit, english_value)
    @value = value
    @suit = suit
    @english_value = english_value
  end
end