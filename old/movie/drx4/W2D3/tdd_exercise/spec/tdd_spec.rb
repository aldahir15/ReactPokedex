require 'rspec'
require 'tdd'

describe 'Array#my_uniq' do
  it 'removes duplicate elements from an array' do
    expect([1, 1, 1, 2, 3, 4, 4, 5].my_uniq).to eq([1, 2, 3, 4, 5])
  end
end

describe 'Array#two_sum' do
  it 'finds all pairs of positions where elements sum to zero' do
    ar1 = [5, 2, 3, -5, 6]
    expect(ar1.two_sum).to eq([[0, 3]])
  end

  it 'returns the positions in an array sorted "dictionary-wise"' do
    ar2 = [5, 2, 3, -5, 6, -6]
    expect(ar2.two_sum).to eq([[0, 3], [4, 5]])
  end
end

describe 'my_transpose' do
  it 'converts a matrix of rows to a matrix of columns' do
    rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
    cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]

    expect(my_transpose(rows)).to eq(cols)
  end
end

describe 'stock_picker' do
  it 'returns the best pair of days to have bought and sold the stock' do
    expect(stock_picker([23, 12, 14, 18, 22, 16])).to eq([1, 4])
  end
end

describe 'Towers of Hanoi' do
  subject(:game) { TowersOfHanoi.new }

  describe '#move' do
    it 'pops disc off of to tower' do
      game.move(0, 1)
      expect(game.towers[0].size).to eq(2)
    end

    it 'pushes disc on to to tower' do
      game.move(0, 1)
      expect(game.towers[1].size).to eq(1)
    end

    it 'will raise error if from tower is empty' do
      expect{ game.move(1, 2) }.to raise_error("From tower is empty")
    end

    it 'will raise error if moving smaller disc on to a larger disc' do
      game.move(0, 1)
      expect{ game.move(0, 1) }.to raise_error("Invalid move")
    end
  end

  describe '#won?' do
    it 'returns true if all discs are on either tower 2 or 3' do
      towers = [[], [], [3, 2, 1]]
      game = TowersOfHanoi.new(towers)
      expect(game.won?).to be true

      towers = [[], [3, 2, 1], []]
      game = TowersOfHanoi.new(towers)
      expect(game.won?).to be true
    end

  end
end
