class Card
  attr_reader :suit, :value

  def self.values
    VALUES_NAMES.keys
  end

  def self.suits
    SUIT_SYMBOLS.keys
  end

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  SUIT_SYMBOLS = {
    spades: "♠",
    hearts: "♥",
    diamonds: "♦",
    clubs: "♣"
  }

  VALUES_NAMES = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14
  }

  def to_s
    self.value + SUIT_SYMBOLS[self.suit]
  end


end
