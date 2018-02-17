#!/usr/local/bin/ruby

#The following program is based off a series of interviewing questions. 

#1. Is Unique: Implement an algorithm to determine if a string has all unique characters. What if you cannot use additional data structures?

 #-----------------------------------#
# Accepts a string, returns a boolean #
# in reference to if a string is      #
# unique or not in terms of chracters # 
 #-----------------------------------#
def isUnique? string
 
   # Variables used to determine uniqueness. 
   firstChar, secondChar = ""

   # Sort and return the string provided. 
   sortedString = string.chomp.chars.sort.join

   # If two consecutive characters are the same, string is not unique. 
   sortedString.each_char do |char|    

      firstChar = char

      if firstChar == secondChar
         return false
      end

      secondChar = firstChar
   end

   return true	 
end
		
 #-----------#
# Main Method #
 #-----------#
#Main Method	
	      
   # Error checks on input.
      if ARGV.length != 1
         puts "Format: ./isUnique.rb <string_to_be_tested>"
      return
   end

   # Collect input. 
   stringToTest = ARGV[0]

   # Is input unique?  
   if isUnique? stringToTest 
      puts "#{stringToTest} has all unique characters."
   else
      puts "#{stringToTest} does not have all unique characters."
   end

   return
#End of Main
