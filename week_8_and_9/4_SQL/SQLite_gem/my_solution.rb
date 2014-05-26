# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge by myself

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years) 
  puts "LONGEST SERVING REPRESENTATIVES"
  longest_serving_reps = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  #years_served = $db.execute("SELECT years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
  #longest_serving_reps.each {|rep| puts rep.first + " - " + years_served[rep].to_s}
  longest_serving_reps.each {|rep, years| puts "#{rep} - #{years} years"}
end

def print_lowest_grade_level_speakers(minimum_grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  lowest_grade_reps = $db.execute("SELECT name, grade_current FROM congress_members WHERE grade_current < #{minimum_grade}")
  lowest_grade_reps.each {|rep, grade| puts "#{rep}, #{grade}"}
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_given_reps
	puts "GIVEN REPS"
	given_reps = $db.execute("SELECT name, location FROM congress_members WHERE location='AL' OR location='NJ' OR location='NY' OR location='FL' OR location='ME'")
	given_reps.each {|rep, location| puts "#{rep}, #{location}"}
end


print_arizona_reps

print_separator

print_longest_serving_reps(35)
# DONE - Print out the number of years served as well as the name of the longest running reps
# DONE output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(8)
print_given_reps
# DONE - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# DONE - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.



# The sqlite3 gem manages the db file ($db hols all the information in the database
# as tables) allowing SQL statements to be passed to it. In the given line 'execute'
# is a method that passes a SQL statement to the db file to be run. 

# I got this program to work faster than I exepcted, but I still want to devote more
# time to practicing SQL statements and running a database, considering how much I will
# be doing that in the future.