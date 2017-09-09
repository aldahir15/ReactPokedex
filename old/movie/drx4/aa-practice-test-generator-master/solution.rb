def rec_sum(nums)
  return 0 if nums.empty?
  nums[0] + rec_sum(nums.drop(1))
end

def make_better_change(value, coins)
  coins_to_check = coins.select{|coin| coin <= value}
  return nil if coins_to_check.empty?

  solutions = []

  coins_to_check.sort.reverse.each do |coin|
    remainder = value - coin

    if remainder > 0
      remainder_solution = make_better_change(remainder, coins_to_check)
      solutions << [coin] + remainder_solution unless remainder_solution.nil?
    else
      solutions << [coin]
    end
  end

  solutions.sort_by!{|arr| arr.size}.first
end

class Hash

  def my_merge(hash2)
    self_dup = dup

    hash2.each do |k, v|
      self_dup[k] = v
    end

    self_dup
  end

end

class Array

  def my_bsearch(target)
    return nil if size == 0
    mid = size/2

    case self[mid] <=> target
    when 0
      return mid
    when 1
      return self.dup.take(mid).my_bsearch(target)
    else
      search_res = self.dup.drop(mid+1).my_bsearch(target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end

end

def pig_latinify(sentence)
  translated_words = sentence.split(" ").map do |word|
    translate_word(word)
  end
  translated_words.join(" ")
end

def translate_word(word)
  vowels = %w(a e i o u)
  if vowels.include?(word[0])
    "#{word}ay"
  else
    phoneme_end = 0
    until vowels.include?(word[phoneme_end])
      phoneme_end += 1
    end
    phoneme_end += 1 if word[phoneme_end - 1] == "q"
    "#{word[phoneme_end..-1]}#{word[0...phoneme_end]}ay"
  end
end


class String
  def real_words_in_string(dictionary)
    real_words = []
    (1...self.length - 1).each do |first|
      (first + 1...self.length).each do |last|
        word = self[first...last]
        if dictionary.include?(word)
          real_words << word unless real_words.include?(word)
        end
      end
    end
    real_words
  end
end

def doubler(array)
  array.map { |num| num * 2 }
end

class Array
  def my_inject(accumulator = nil, &block)
    i = 0

    if accumulator.nil?
      accumulator = self.first
      i += 1
    end

    while i < length
      accumulator = block.call(accumulator, self[i])
      i += 1
    end

    accumulator
  end
end

class Array

  def my_select(&prc)
    select = []

    self.my_each{|el| select << el if prc.call(el)}
    select
  end

end

class Array
  def merge_sort(&prc)
    # See how I create a Proc if no block was given; this eliminates
    # having to later have two branches of logic, one for a block and
    # one for no block.
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)

  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

