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
def URLify charArray, length

   numberOfSpaces = 0
 
   # puts "Counting spaces"
   # Count the number of spaces in string, this will determine new length
   (length - 1).downto(0) do |i|
      if charArray[i] == " "
         numberOfSpaces += 1 
      end
   end

   # Determine index to iterate new URL string.  
   newCurr = length + (numberOfSpaces * 2) - 1 
  
   # puts "Updating String to URL"    
   # Update string to URL requirements. (Iterating from right to left). 
   (length - 1).downto(0) do |oldCurr|
      if charArray[oldCurr] == " "
         # puts "Found a space!"
         # Insert "%20" in place of newCurr 
         charArray[newCurr] = "0"
         charArray[newCurr - 1] = "2"
         charArray[newCurr - 2] = "%"
         newCurr -= 3
      else
         # puts "Just a normal character"
         # Insert oldCurr in place of newCurr
         charArray[newCurr] = charArray[oldCurr]
         newCurr -= 1
      end
        
   end   

   return 
end



 #-----------#
# Main Method #
 #-----------#
   # Error checks on input. 
   if ARGV.length != 2 || !/\d+/.match(ARGV[1])
      puts "Format: /URLify.rb <string> <trueLength>"
      return
   end

   # Collect inputs.
   charArray = ARGV[0].chars.to_a
   trueLength = ARGV[1].to_i

   # Update and print out string.
   URLify(charArray, trueLength)

   puts "#{charArray.join}"
   return
# End of Main
