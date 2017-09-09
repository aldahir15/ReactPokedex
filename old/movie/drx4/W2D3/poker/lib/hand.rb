require_relative "card.rb"

class Hand
  attr_reader :cards, :value

  def initialize(cards)
    raise ArgumentError if cards.length != 5
    @cards = cards
  end

  def values
    @cards.map(&:value)
  end

  def four_of_a_kind?

  end 

  def three_of_a_kind?
    values.combination(3).any? do |trip_combo|
      trip_combo.all? { |card_val| card_val == trip_combo.first}
    end
  end

  def pairs
  end

  def pair?

  end
end


ace_spades = Card.new(:spades, "A")
queen_hearts = Card.new(:hearts, "Q")
two_diams = Card.new(:diamonds, "2")
seven_clubs = Card.new(:clubs, "7")
ace_clubs = Card.new(:clubs, "A")
six_spades = Card.new(:spades, "6")
ace_diams = Card.new(:diamonds, "A")

cards = [ace_spades, queen_hearts, ace_diams, seven_clubs, ace_clubs]

hand = Hand.new(cards)

p hand.values.combination(3).to_a
p hand.three_of_a_kind?
