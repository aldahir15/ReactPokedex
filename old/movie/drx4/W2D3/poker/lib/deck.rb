require_relative "card.rb"

class Deck
  attr_reader :cards

  def initialize
    @cards = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        @cards << Card.new(suit, value)
      end
    end
  end

  def shuffle!
    @cards.shuffle!
  end

  def take_card
    @cards.pop
  end

  def size
    @cards.size
  end
end
