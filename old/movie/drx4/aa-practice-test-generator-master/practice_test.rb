# Write a recursive method that returns the sum of all elements in an array
def rec_sum(nums)
  return 0 if nums.empty?
  nums[0] + rec_sum(nums[1..-1])
end

class Hash

  # Write a version of merge. This should NOT modify the original hash
  def my_merge(hash2)
    new_hash = self
    hash2.each do |key,val|
      new_hash[key] = val
    end
    new_hash
  end

end

class Array

  # Write a monkey patch of binary search:
  # E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
  def my_bsearch(target, &prc)
    prc ||= Proc.new {|el1,el2| el1 <=> el2 }

    probe_index = self.length / 2

    case prc.call(probe_index,target)
    when 1
     self.take(probe_index).my_bsearch
    when 0
     return probe_index # found it
    else
     sub_ans = self.drop(probe_index)
     sub_ans.nil? ? nil : self.drop(probe_index).my_bsearch + probe_index
    end

  end

end

# Write a method that translates a sentence into pig latin. You may want a helper method.
# 'apple' => 'appleay'
# 'pearl' => 'earlpay'
# 'quick' => 'ickquay'
def pig_latinify(sentence)
  sentence = sentence.split(' ')
  new_sent = []
  sentence.each do |word|
    new_sent << pig_word(word)
  end

  new_sent.join(' ')
end

def pig_word(word)
  vowels = ["a","e","i","o","u"]
  if vowels.include?(word[0])
     return word
  end
  word.each_char.with_index do |letter,idx|
    if vowels.include?(letter)
       return word[idx - 1] + word[idx]
    end
  end
end



class String
  # Returns an array of all the subwords of the string that appear in the
  # dictionary argument. The method does NOT return any duplicates.

  def real_words_in_string(dictionary)
    dictionary.select {|word| self.include?(word) }
  end
end

# Write a method that doubles each element in an array
def doubler(array)
  new_array = []
  array.each do |ele|
    new_array << ele * 2
  end
  new_array
end

class Array

  # Monkey patch the Array class and add a my_inject method. If my_inject receives
  # no argument, then use the first element of the array as the default accumulator.

  def my_inject(accumulator = nil, &prc)
    if accumulator.nil?
      accumulator = self.shift
    end

    self.each do |ele|
      accumulator = prc.call(accumulator,ele)
    end

    accumulator
  end
end

class Array

  def my_select(&prc)
    ret = []
    self.each do |ele|
      if prc.call(ele)
         ret << ele
      end
    end
    ret
  end

end

class Array

  # Write an Array#merge_sort method; it should not modify the original array.

  def merge_sort(&prc)

  end

  private
  def self.merge(left, right, &prc)
  end
end
