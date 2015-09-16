# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  else
    arr.inject {|sum,i| sum+i}
  end
end

def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    temp = arr.sort
    return temp[-1] + temp[-2]
  end
end

def sum_to_n? arr, n
  if arr.size <2
    return false
  else
    !!temp = arr.find {|i| arr[arr.index(i)+1..-1].include?(n-i)}
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if (s =~ /\A[a-z]/i).nil?
    return false
  else
    consonant = ['A','E','I','O','U']
    !consonant.include?(s[0].upcase)
  end
end

def binary_multiple_of_4? s
  if (s =~ /\A[01]+\z/).nil?
    return false
  else 
    (s.to_i(2))%4 == 0
  end
end

# Part 3

class BookInStock
  def initialize (i,pr)
    raise ArgumentError, 'Invalid ISBN number' unless i.strip.empty? == false
    @isbn = i
    raise ArgumentError, 'price must be greater than 0' unless pr>0
    @price = pr
  end
  def isbn
    @isbn
  end
  def price
    @price
  end
  def isbn= (i)
    @isbn = i
  end
  def price= (pr)
    @price = pr
  end
  def price_as_string
    return sprintf "$%.2f", @price
  end
end
