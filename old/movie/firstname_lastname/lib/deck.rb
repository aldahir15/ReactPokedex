require_relative 'card'

# Represents a deck of playing cards.
class Deck
  # Returns an array of all 52 playing cards.
  def self.all_cards
    array = []
    Card::SUIT_STRINGS.each_key do |suit|
      Card::VALUE_STRINGS.each_key do |value|
        array << Card.new(suit,value)
      end
    end
    array
  end

  def initialize(cards = Deck.all_cards)
    @all_cards = cards
  end

  # Returns the number of cards in the deck.
  def count
    @all_cards.length
  end

  # Takes `n` cards from the top of the deck.
  def take(n)
    raise "not enough cards" if n > count
    @all_cards.shift(n)
  end

  # Returns an array of cards to the bottom of the deck.
  def return(cards)
    @all_cards.concat(cards)
  end
end
