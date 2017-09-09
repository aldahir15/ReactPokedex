require 'byebug'

def range(start_range, end_range)
  return [] if end_range == start_range
  range(start_range, end_range - 1) << end_range - 1
end

def sum_array_iterative(arr)
  arr.reduce(:+)
end

def sum_array_recursive(arr)
  return arr.first if arr.length <= 1
  arr.first + sum_array_recursive(arr[1..-1])
end

def exp1(base, power)
  return 1 if power == 0
  base * exp1(base, power - 1)
end

def exp2(base, power)
  return 1 if power == 0
  return base if power == 1
  half_power = power / 2
  if power.even?
    exp2(base, half_power) * exp2(base, half_power)
  else
    base * (exp2(base, (power - 1) / 2) * exp2(base, (power - 1) / 2))
  end
end

def retirement_account_estimation(parents_age)
  child_age = parents_age / 2
  current_retirement_account = child_age**2
  retirement_age = 65
  years_until_retirement = retirement_age - child_age
  current_retirement_account * years_until_retirement
end

def deep_dup(arr)
  duped = []
  arr.each do |el|
    if el.is_a?(Array)
      duped << deep_dup(el)
    else
      duped << el
    end
  end
  duped
end

def iterative_fibonacci(n)
  arr = [1, 1]
  until arr.length == n
    arr << arr[-1] + arr[-2]
  end
  arr
end

def recursive_fibonacci(n)
  return [] if n == 0
  return [0] if n == 1
  return [0, 1] if n == 2

  prev = recursive_fibonacci(n - 1)
  prev << prev[-1] + prev[-2]
end

def subsets(arr)
  return [[]] if arr.empty?
  prev = subsets(arr[0..-2])

  prev + deep_dup(prev).each do |el|
    el << arr.last
  end
end

def permutations(array)
  return [[]] if array.empty?
  return [array] if array.length == 1
  prev = permutations(array[0..-2])

  (array.length - 1).times do |i|
    prev[i] << array.last
    prev << prev[i].dup.rotate
  end

  prev
end


if __FILE__ == $PROGRAM_NAME
  # p exp1(4, 2)
  # p retirement_account_estimation(50)
  # p exp2(4, 2)
  # p deep_dup([["nuts", "bolts", "washers"], ["capacitors", "resistors", "inductors"]])
  # p iterative_fibonacci(8)
  # p recursive_fibonacci(8)
  # p subsets([1])
  # p subsets([1, 2])
  # p subsets([1, 2, 3])
  p permutations([])
  p permutations([1])
  p permutations([1, 2])
  p permutations([1, 2, 3])
end
