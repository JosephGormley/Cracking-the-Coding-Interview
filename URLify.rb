#!/usr/local/bin/ruby

#The following program is based off a series of interviewing questions.

#3. URLify: Write a method to replace all spaces in a string with '%20'. You may assume that the string has sufficient space at the end to hold the 
#   additional characters, and that you are given the "true" length of the string. (Note: If implementing in Java, please use a character 
#   array so that you can perform this operation in place.)
#   
#   EXAMPLE
#
#   Input:  "Mr John Smith    ", 13
#   Output: "Mr%20John%20Smith"   

 #---------------------------------------------#
# Replaces ' ' (in place) with '%20' in a given #
# string.                                       #
#                                               #    
# @string: String to format as a URL            #
# @length: Length of the 'true' size of the URL #
 #---------------------------------------------#
def URLify charArray, trueLength

   # Count the number of spaces in string, this will determine new length
   (trueLength - 1).downto(0) do |i|
      if charArray[i] == " "
         puts "h"
      end
   end

   # Determine new length of string
   

   return
end



 #-----------#
# Main Method #
 #-----------#
   # Error checks on input. 
   if ARGV.length != 2 || !/\d+/.match(ARGV[1])
      puts "Format: /URLify.rb <string> <trueLength>"
   end

   # Collect inputs.
   charArray = ARGV[0].chars.to_a
   trueLength = ARGV[1].to_i

   URLify charArray, trueLength

   return
# End of Main
