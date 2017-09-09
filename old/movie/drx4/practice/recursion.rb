# Testing myself on recursion. I need to know these concepts, and I cannot
# forget them for the test tomorrow. I can do this. I CAN DO THIS! :D

puts("File works!")
p '--------------'
def sum_to(n)
  return n if n == 1
  return nil if n < 0

  return n + sum_to(n - 1)

end

p sum_to(5)  # => returns 15
p sum_to(1)  # => returns 1
p sum_to(9)  # => returns 45
p sum_to(-8)  # => returns nil
p '--------------'
def add_numbers(array)
  return nil if array.length == 0
  return array.last if array.length == 1
  array[0] + add_numbers(array[1..-1])
end

p add_numbers([1,2,3,4]) # => returns 10
p add_numbers([3]) # => returns 3
p add_numbers([-80,34,7]) # => returns -39
p add_numbers([])
p '--------------'
def gamma_fnc(arg)
  return nil if arg == 0
  return 1 if arg == 1
  # factorial(arg - 1)
  gamma_fnc(arg - 1) * (arg - 1)
end
p '--------------'
def factorial(arg)
  return 1 if arg == 1
  arg * factorial(arg - 1)
end

p gamma_fnc(0)  # => returns nil
p gamma_fnc(1)  # => returns 1
p gamma_fnc(4)  # => returns 6
p gamma_fnc(8)  # => returns 5040
p '--------------'
def ice_cream_shop(array, target)
  return true if array[0] == target
  return false if array.length == 0
  ice_cream_shop(array[1..-1],target)
end

# Important concept to take away: recursion uses arrays in parts, just like
# subtracting one from a number. You will ALWAYS be looking for a 'one
# less' point when doing recursion.

p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
p ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
p ice_cream_shop([], 'honey lavender')  # => returns false
p '--------------'
def reverse(string)
  return string if string.length == 0
  reverse(string[1..-1]) + string[0]
end

# Imporant concept to take away: recursion builds backwards just fine. Think
# in the opposite direction, and you'll be fine.

p reverse("house") # => "esuoh"
p reverse("dog") # => "god"
p reverse("atom") # => "mota"
p reverse("q") # => "q"
p reverse("id") # => "di"
p reverse("") # => ""
p '--------------'
def sum_recur(array)
  return array[0] if array.length == 1
  array[0] + sum_recur(array[1..-1])
end

p sum_recur([0,1,2,3,4]) #=> 10
p sum_recur([0,2,4,6,8,10]) #=> 30
p sum_recur([7,13,87,65]) #=> 172

p '--------------'
def includer(array, target)
  return true if array[0] == target
  return false if array.length == 0
  includer(array[1..-1],target)
end

p includer([1,2,3,4,5],3)
p includer([2,2,2,2,2,2,2,2,2,2,2,2,2,3],3)
p '--------------'
def num_occur(array,target) # DOES NOT WORK
  return 0 if array.length == 0

  if array.first == target
     count = 1
  else
     count = 0
  end

  count + (num_occur(array[1..-1],target))

end

p num_occur([2,2,2,2,3,2,2,2,2,3,2,2,2,3],3) #=> 3
p '--------------'
def add_to_twelve?(array)
  return false if array[1] == nil
  return true if array[0] + array[1] == 12
  add_to_twelve?(array[1..-1])
end

p add_to_twelve?([]) #=> true
p add_to_twelve?([1,3,5,6,6,9,10]) #=> true
p add_to_twelve?([1,2,1,2,1,2,1,2,1]) #=> false
p add_to_twelve?([1,3,4,5,5,7,8]) # => true

p '--------------'
def sorted?(array)
  return true if array[1].nil?
  return false if array[1] < array[0]
  sorted?(array[1..-1])
end

p sorted?([1,2,3,4,5]) #=> true
p sorted?([1,1,1,1,1,1,5,1]) # false
p sorted?([2,3,4,4,6,7,10,11,15,23,59,59]) #=> true

p '--------------'

def expo(num,exp)
  return 1 if num == 0
  return num if exp == 1
  num * (expo(num, exp - 1))
end

p expo(5,3) #=> 125

p '--------------'

# def fibonacci(n)
#   return n if n == 0
#
#   fib = [0, 1]
#   fib << fibonacci(fib[n - 2]) + fibonacci(fib[n - 1])
#
# end
#
# fibonacci(3)

class Array

  def bsearch(target,&prc)
    return nil if self.length == 0
    prc ||= Proc.new {|ele1, ele2| ele1 <=> ele2 }

    probe_index = self.length / 2

    case prc(target,self[probe_index])
    when 1
      return self.take(probe_index).bsearch(target,prc)
    when 0
      return probe_index
    when -1
      sub_answer = self.drop(probe_index) 

  end

end
