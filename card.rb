# This is a single card
class Card

  attr_accessor :value, :suit, :english_value

  def initialize(value, suit)
    update_english_value(value)
    @value = value
    @suit = suit
  end

  def update_english_value(value)
    @english_value = case value
                     when 1 then 'ace'
                     when 2..10 then value
                     when 11 then 'jack'
                     when 12 then 'queen'
                     when 13 then 'king'
                     else raise 'Invalid value'
    end
  end

end