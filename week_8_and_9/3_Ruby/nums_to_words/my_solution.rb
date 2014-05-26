# U3.W8-9: Numbers to English Words


# I worked on this challenge by myself

# 2. Pseudocode



# 3. Initial Solution

def in_words number

	if number.to_s.length == 1
		if number == 0
			return "zero"
		elsif number == 1
			return "one"
		elsif number == 2
			return "two"
		elsif number == 3
			return "three"
		elsif number == 4
			return "four"
		elsif number == 5
			return "five"
		elsif number == 6
			return "six"
		elsif number == 7
			return "seven"
		elsif number == 8
			return "eight"
		elsif number == 9
			return "nine"
		end
	else
		first, second = number.divmod(10)
		whole_num = ""
		if first == 1
			if second == 0
				return "ten"
			elsif second == 1
				return "eleven"
			elsif second == 2
				return "twelve"
			elsif second == 3
				return "thirteen"
			elsif second == 4
				return "fourteen"
			elsif second == 5
				return "fifteen"
			elsif second == 6
				return "sixteen"
			elsif second == 7
				return "seventeen"
			elsif second == 8
				return "eighteen"
			elsif second == 9
				return "nineteen"
			end
		elsif first == 2
			whole_num = "twenty"
		elsif first == 3
			whole_num = "thirty"
		elsif first == 4
			whole_num = "forty"
		elsif first == 5
			whole_num = "fifty"
		elsif first == 6
			whole_num = "sixty"
		elsif first == 7
			whole_num = "seventy"
		elsif first == 8
			whole_num = "eighty"
		elsif first == 9
			whole_num = "ninety"
		end

		if second == 0
			whole_num
		elsif second == 1
			whole_num = whole_num + "-one"
		elsif second == 2
			whole_num = whole_num + "-two"
		elsif second == 3
			whole_num = whole_num + "-three"
		elsif second == 4
			whole_num = whole_num + "-four"
		elsif second == 5
			whole_num = whole_num + "-five"
		elsif second == 6
			whole_num = whole_num + "-six"
		elsif second == 7
			whole_num = whole_num + "-seven"
		elsif second == 8
			whole_num = whole_num + "-eight"
		elsif second == 9
			whole_num = whole_num + "-nine"
		end
	end
end


# 4. Refactored Solution

# I'm a bit torn up about how to refactor this. My immediate
# thought was to use case statements, however my instructor
# in my last GPS said that case statements are generally a big no-no
# and are never used by advanced programmers. I'm leaving this as-is
# for now...

# 5. Reflection 

# I hope to come back to this problem later (and when I'm not so close
# to the deadline). There's probably a much more efficient way to solve this.