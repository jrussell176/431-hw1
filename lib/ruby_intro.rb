# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0){|s,x| s + x }
end

def max_2_sum arr
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    sorted_arr = arr.sort
    top_two_values = sorted_arr[-2..sorted_arr.size]
    return sum(top_two_values)
  end
end

def sum_to_n? arr, n
  while arr.size > 1
    num = arr.pop
    for i in arr
      if i + num == n
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  consonants = ['a','e','i','o','u']
  if s[0] =~ /[A-Za-z]/
    if s.size == 0
      return false
    else
      return !consonants.include?(s[0].downcase)
    end
  end
  return false
end

def binary_multiple_of_4? s
  i = s.to_i(2)
  if s == '0'
    return true
  elsif i == 0
    return false
  elsif i % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price 
  
  def initialize(isbn, price)
    unless isbn.size > 0
      raise ArgumentError.new("No empty strings allowed")
    end
    unless price > 0
      raise ArgumentError.new("Price must be greater than 0")
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return '$%.2f' % @price
  end
end
