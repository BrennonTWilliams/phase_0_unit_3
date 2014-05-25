# U3.W8-9: 


# I worked on this challenge [by myself, with: ].
# 1. Brennon Williams
# 2. Ronald Ishak

# 2. Pseudocode
# 1. Create a method accepting an array
# 2. Itterate through each value in the array
# 3. Use an IF statement if its divisible by 15, 3, 5 
# 4. If divisible by 15 => FizzBuzz
# 5. If only divisible 3 => Fizz
# 6. If only divisible 5 => Buzz
# 7. Otherwise just return the array value

# 3. Initial Solution

# def super_fizzbuzz(array)
#   output = Array.new
#   array.each do |x|
#     if x % 15 == 0
#         output << "FizzBuzz"
#     elsif x % 3 == 0 && x % 15 != 0
#         output << "Fizz"
#     elsif x % 5 == 0 && x % 15 != 0
#         output << "Buzz"
#     else
#         output << x
#     end
#   end
#   return output
# end

# 4. Refactored Solution

def super_fizzbuzz(array)
  array.map do |x|
    if x % 15 == 0 then "FizzBuzz"
    elsif x % 3 == 0 && x % 15 != 0 then "Fizz"
    elsif x % 5 == 0 && x % 15 != 0 then "Buzz"
    else 
      x
    end
  end
end


# 5. Reflection 

# Refactoring this problem was really interesting because we were both happy with our Initial
# solution. We decided to use if...then statements which really cleaned up our solution and 
# cut down the length signifigantly.