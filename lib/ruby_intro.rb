# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  for number in arr
    #loop through numbers to get sum of all numbers
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
    # Loop through numbers in array
    if largest == nil
      # largest is not initiailzed, set it to number
      largest = number
    elsif second_largest == nil 
      # second largest is not initialized, check if number is smaller than largest
      if number < largest
          # smaller than largest
        second_largest = number
      else
        # larger than largest
        second_largest = largest
        largest = number
      end
    elsif number > largest
      # larger than largest
      second_largest = largest
      largest = number
    elsif number > second_largest
      # larger than second largest
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
    # Loop through every element
    current_num = arr[i]
    for j in 0..arr_length do 
      # Get every permutation
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
  if first_char =~ /[^AEIOUaeiou]/ && first_char != "" 
    # If it does not have a vowel or is empty
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if s =~ /[2-9a-zA-Z]/ || s.length == 0
    # Checks if s is a binary number, if it is not valid, return
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
   raise ArgumentError if isbn == ""
   raise ArgumentError if price <= 0
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
