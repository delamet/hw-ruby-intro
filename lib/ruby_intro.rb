# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for number in arr
    sum += number
  end
  #puts sum
  return sum
end

def max_2_sum arr
  largest = nil
  second_largest = nil
  sum = 0
  for number in arr
    if largest == nil
      largest = number
    elsif second_largest == nil 
      if number < largest
        second_largest = number
      else
        second_largest = largest
        largest = number
      end
    elsif number > largest
      second_largest = largest
      largest = number
    elsif number > second_largest
      second_largest = number
    end
  end
  if largest == nil 
    largest = 0
  end
  if second_largest == nil
    second_largest = 0
  end
  puts largest
  puts second_largest
  sum = largest + second_largest
  return sum
end

def sum_to_n? arr, n
  arr_length = arr.length - 1
  for i in 0..arr_length do 
    current_num = arr[i]
    for j in 0..arr_length do 
      selected_num = arr[j]
      if j != i and ((selected_num + current_num) == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  message = "Hello, #{name}"
  return message
end

def starts_with_consonant? s
  first_char = s[0]
  if first_char =~ /[^AEIOUaeiou[:alpha]]/ && first_char != "" 
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /[2-9a-zA-Z]/ || s.length == 0
    return false
  end 
  trimed_s = s.delete(' ')
  decimal = trimed_s.to_i(2)
  if decimal % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
 
 def initialize(isbn, price)
   #raise ArgumentError unless isbn != ""
   #raise ArgumentError unless price > 0
   @isbn = isbn
   @price = price
 end
 
 def isbn
   @isbn
 end
 
 def isbn=(value)
   @isbn = value
 end
 
 def price
   @price
 end
 
 def price=(value)
   @price = value
 end
 
 def price_as_string()
   message = "$%0.2f" %[@price]
   return message
 end
 
 puts starts_with_consonant?("a")
end
