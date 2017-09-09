require 'rspec'
require 'deck'

describe Deck do
  let(:card) { double("card") }
  subject(:deck) { Deck.new }

  describe '#initialize' do
    it 'starts with an array of 52 cards' do
      expect(deck.cards.size).to eq(52)
    end
  end

  describe '#size' do
    it 'returns the size of the deck' do
      expect(deck.size).to eq(52)
    end
  end

  describe '#take_card' do
    it 'pops a card off and returns it' do
      last = deck.cards.last
      expect(deck.take_card).to eq(last)
      expect(deck.size).to eq(51)
    end
  end
end
