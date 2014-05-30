# U3.W8-9: Reverse Words


# I worked on this challenge by myself

# 2. Pseudocode
# Create function
# Split string into individual strings (one per word), push them to an array
# Reverse each string in the array
# Combine strings in a new single string, return it


# 3. Initial Solution

# def reverse sentence
# 	words = sentence.split
# 	reversedString = ""
	
# 	words.each do |current| 

# 		if current.include? "." || "," || "!" || "?"
# 			currentPuncuation = current.slice!(".")
# 		elsif current.include? ","
# 			currentPuncuation = current.slice!(",")
# 		elsif current.include? "!"
# 			currentPuncuation = current.slice!("!")
# 		elsif current.include? "?"
# 			currentPuncuation = current.slice!("?")
# 		end

# 		reversedString = reversedString + current.reverse + if (currentPuncuation != nil) then currentPuncuation.to_s + " " else " " end
# 	end

# 	reversedString
# end



# 4. Refactored Solution

def reverse sentence
	words = sentence.split
	reversedString = ""
	
	words.each do |current| 

		if current.include? "." || "," || "!" || "?"
			currentPuncuation = current.slice!(".")
		elsif current.include? ","
			currentPuncuation = current.slice!(",")
		elsif current.include? "!"
			currentPuncuation = current.slice!("!")
		elsif current.include? "?"
			currentPuncuation = current.slice!("?")
		end

		reversedString = reversedString + current.reverse + currentPuncuation.to_s + " "
	end

	reversedString
end




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts reverse "Holy Cow"
puts reverse "redrum is a creepy word."
puts reverse "Holy cow! What a beautifully, elegantly, simply written program."
puts reverse "fire the cannon"




# 5. Reflection 
# I, stipudly, forgot to put "reverse" in the last test so it looked like my 
# program wasn't working. I thought there was a problem with currentPunctuation
# being nil when there wasn't any punctuation to deal with, that's why I had
# the one line if-then-else statement. This adds unnecessary complexity so I
# took it out when refactoring.
