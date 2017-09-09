# SEARCHES

p "---------------"

# --- MERGE-SORT ---

def merge_sort(array)
  return array if array.length < 2

  middle = array.length / 2

  left = array.take(middle)
  right = array.drop(middle)

  sort_left = merge_sort(left)
  sort_right = merge_sort(right)

  merge(sort_left, sort_right)
end

def merge(left, right)
  merged_array = []

  until left.empty? || right.empty?
    merged_array << ((left.first < right.first) ? left.shift : right.shift)
  end

  merged_array + left + right

end

p merge_sort([1,5,3,6,7,8,3,6,34,23,75,87,23,756,34,23,76,89])
p "---------------"

# --- JUMBLE-SORT ---

def jumble_sort (word, alphabet=("a".."z").to_a)
  sorted = []
  alphabet.each do |char|
    if word.include?(char)
       sorted << char
    end
  end
  sorted
end

p jumble_sort("hello",["l","e","o","h"])
p "---------------"

# ---BUBBLE-SORT---

def bubble_sort(array)
  swapped = true
  while swapped
    swapped = false
    0.upto(array.size-2) do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] # swap values
        swapped = true
      end
    end
  end
  array
end

p bubble_sort([6,4,7,3,4,8,9,2,3,5,6,7])
p "---------------"

# ---QUICK-SORT---

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left_side = arr[1..-1].select { |el| el < arr.first }
  right_side = arr[1..-1].select { |el| el > arr.first }
  quick_sort(left_side) + pivot_arr + quick_sort(right_side)
end

p quick_sort([1,8,4,3,6,7,5,3,8,23,67,45,78,90,34,56,78])
p "---------------"
