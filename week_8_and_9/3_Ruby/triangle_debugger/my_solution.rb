# U3.W8-9: Triangle Debugger


# I worked on this challenge by myself


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   if a != 0 || b != 0 || c != 0
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
# valid_triangle? expects 3 arguments
# * what is the exact line number the error is appearing?
# Line #9
# * before you fix the bug, what do you think is causing the error?
# sum should not be an argument

# --- Bug 2 ---
# * what is the exact description of the error?
# valid_triangle? returns true for an equilateral triangle
# * what is the exact line number the error is appearing?
#Line #9
# * before you fix the bug, what do you think is causing the error?
# Should return true

# --- Bug 3 ---
# * what is the exact description of the error?
# valid_triangle? returns false if any of the arguments are 0
# * what is the exact line number the error is appearing?
# Line 9
# * before you fix the bug, what do you think is causing the error?
# Should return false


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && c + b > a
end


# 5. Reflection 
# I actually did this problem on Socrates awhile ago. I love seeing how easy it is
# to simplify code in Ruby. My original solution was about the same length as the 
# one here, but I managed to pair it down quite a bit. 
