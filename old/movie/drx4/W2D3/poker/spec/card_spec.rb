require 'rspec'
require 'card'

describe Card do
  describe '::values' do
    it 'returns all card values' do
      values = %w{2 3 4 5 6 7 8 9 10 J Q K A}
      expect(Card.values).to eq(values)
    end
  end

  describe '::suits' do
      it 'returns all the suits' do
        suits = %i{spades hearts diamonds clubs}
        expect(Card.suits).to eq(suits)
      end
  end

  subject(:card) { Card.new(:spades, "A") }

  describe '#initialize' do
    it 'initializes with a suit and a value' do
      expect(card.suit).to eq(:spades)
      expect(card.value).to eq("A")
    end
  end

  describe '#to_s' do
    it 'returns a string with the value and suit' do
      expect(card.to_s).to eq("A♠")
    end
  end
end
