#!/usr/local/bin/ruby

#The following program is based off a series of interviewing questions.

#5. One Away: There are three types of edits that can be performed on strings: insert a character.
#   remove a character, or replace a character. Given two strings, write a function to check if 
#   they are one edit (or zero edits) away. 
#
#   EXAMPLE
#
#   pale, ple   -> true
#   pales, pale -> true
#   pale, bale  -> true
#   pale, bake  -> false

 #----------------------------------------#
# Takes in two strings                     #
# Returns true if one or zero edits away   #
# Returns false if more than one edit away #
 #----------------------------------------#

def oneAway? string0, string1

   shorterLength = -1;
   # Determine which string is shorter, we will use this value to iterate.
   # Note: If strings are equal length, code runs as designed.   
   shorterLength = string0.length > string1.length ? string1.length : string0.length
   
   oneEdit = false;
   # Iterate through shorter string. 
   0.upto shorterLength |i|
      # If not the same character, at the same position, edit is needed. 
      if string0[i] != string1[i]
         if oneEdit 
            return false; # Second edit required, return false. 
         else 
            oneEdit = true; # First edit found. 
         end
      end
   end
     
   # At this point the strings are zero/one edit away from each other up until
   # the length of the shortest string. Must check for number of additional chars. 
   if abs (string0.length - string1.length) = 1
      unless oneEdit 
         return true
      end
   end

   # The two strings have equal characters up until the length of the shorter string.
   # But the difference between the lengths is greater than one, therefore it will take
   # more than one edit to fix. 
   return false 
   
end




 #-----------#
# Main Method #
 #-----------#
   # Error checks on input.
   if ARGV.length != 2
      puts "Format: /OneAway.rb <string> <string>" 
   end
   
   # Collect inputs.
   string0 = ARGV[0].chomp
   string1 = ARGV[1].chomp

   # Are inputs one away?
   if oneAway? string0, string1
      puts "Strings are zero/one edit away from being equal"
   else
      puts "Strings are more than one edit away from being equal"
   end

   return
# End of Main
