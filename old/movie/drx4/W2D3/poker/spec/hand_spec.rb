require 'rspec'
require 'hand'

describe Hand do
  let(:card) { double("card") }

  describe '#initialize' do
    it 'raises error if there are not than 5 cards' do
      cards = %w(ace king queen jack ace queen)
      expect { Hand.new(cards) }.to raise_error(ArgumentError)
    end
  end

  describe '#values' do
    it 'returns an array of card values' do
      allow(card).to receive(:value).and_return("A")

      
    end
  end
end
