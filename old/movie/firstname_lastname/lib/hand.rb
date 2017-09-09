class Hand
  # This is called a *factory method*; it's a *class method* that
  # takes the a `Deck` and creates and returns a `Hand`
  # object. This is in contrast to the `#initialize` method that
  # expects an `Array` of cards to hold.
  def self.deal_from(deck)
    cards = deck.take(2)
    Hand.new(cards)
  end

  attr_accessor :cards

  def initialize(cards)
    @cards = cards
  end

  def points
    total = 0
    @cards.each do |card|
    begin
    num = card.blackjack_value
      rescue RuntimeError
        if total + 10 > 21
          num = 1
        else
          num = 11
        end
      end
      total += num
    end
    total
  end

  def busted?
    return true if points > 21
    false
  end

  def hit(deck)
    raise 'already busted' if busted?
    @cards.concat(deck.take(1))
  end

  def beats?(other_hand)
    return false if self.busted?
    return true if points > other_hand.points
    false
  end

  def return_cards(deck)
    deck.return(@cards)
    @cards = []
  end

  def to_s
    @cards.join(",") + " (#{points})"
  end
end
