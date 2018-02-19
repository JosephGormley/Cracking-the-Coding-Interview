#!/usr/local/bin/ruby

#The following program is based off a series of interviewing questions.

#2, Check Permutation: Given two strings, write a method to decide if one is a permutation of the other. 

 #------------------------------------#
# Is string0 a permutation of string1? #
 #------------------------------------# 
def checkPermutation? string0, string1 
   
   # Edge case checks.
   if string0.length != string1.length
      return false
   end

   # Sort strings, makes checking permutation efficient.
   sortedString0 = string0.char.sort.join
   sortedString1 = string1.char.sort.join
   
   # Compare strings, if not equal, not permutations of one another.
   if sortedString0.eql? sortedString1   
      return true
   end 

   # Strings not equal.
   return false

end



 #-----------#
# Main Method #
 #-----------#
   # Check for proper arguements. 
   if ARGV.length != 2
      puts "Format: /CheckPermutation.rb <string0> <string1>"
   end

   # Collect inputs. 
   string0 = ARGV[1].chomp
   string1 = ARGV[2].chomp

   # Are arguements permutations of one another?
   if checkPermutation?(string0.chomp, string1.chomp)
      puts "#{string0} is a permutation of #{string1}"
   else
      puts "#{string0} is not a permutation of #{string2}"
   end

   return
# End of Main
