# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr.first if arr.length == 1

  arr.max(2).sum
end

def sum_to_n? arr, n
  return false if arr.length < 2

  seen = {}
  arr.each do |value|
    return true if seen[n - value]

    seen[value] = true
  end
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s.match?(/\A(?i:[b-df-hj-np-tv-z])/)
end

def binary_multiple_of_4? s
  s.match?(/\A0\z|\A[01]*00\z/)
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format('$%.2f', price)
  end
end
