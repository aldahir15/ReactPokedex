class Array

  def my_uniq
    uniques = []
    each { |el| uniques << el unless uniques.include?(el) }
    uniques
  end

  def two_sum
    two_sums = []
    each_with_index do |el, idx1|
      (idx1+1...length).each do |idx2|
        two_sums << [idx1, idx2] if el + self[idx2] == 0
      end
    end
    two_sums
  end

end

def my_transpose(matrix)
  transposed = Array.new(matrix.length) { Array.new(matrix.length)}
  matrix.each_with_index do |row, row_idx|
    row.each_with_index do |el, col_idx|
      transposed[col_idx][row_idx] = el
    end
  end
  transposed
end

def stock_picker(stock_prices)
  days = []
  last_diff = 0
  stock_prices.each_with_index do |price, day1|
    (day1+1...stock_prices.length).each do |day2|
      diff = stock_prices[day2] - price
      if diff > last_diff && diff > 0
        last_diff = diff
        days = [day1, day2]
      end
    end
  end
  days
end

class TowersOfHanoi
  attr_reader :towers

  def initialize(towers = [[3, 2, 1], [], []])
    @towers = towers
  end

  def play
    until won?
      puts "Pick a tower to move from "
      from_tower = gets.chomp.to_i
      puts "Pick a tower to move to"
      to_tower = gets.chomp.to_i
      move(from_tower, to_tower)
    end
    puts "You win!"
  end

  def move(from_tower, to_tower)
    raise "From tower is empty" if @towers[from_tower].empty?
    unless @towers[to_tower].empty?
      raise "Invalid move" if @towers[from_tower].last > @towers[to_tower].last
    end
    @towers[to_tower] << @towers[from_tower].pop
  end

  def won?
    @towers[1].size == 3 || @towers[2].size == 3
  end

  def render
    puts "Tower 0 " + @towers[0].to_s
    puts "Tower 1 " + @towers[1].to_s
    puts "Tower 2 " + @towers[2].to_s
  end
end
