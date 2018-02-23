#!/usr/local/bin/ruby

#The following program is based off a series of interviewing questions.

#4. Palindrome Permutation: Given a string, write a function to check if it is a permutation of a palindrome. A palindrome
#   is a word or phrase that is the same forwards and backwards. A permutation is a rearrangement of letters. The palindrome 
#   does not need to be limited to just dictionay words.
# 
#   EXAMPLE
#
#   Input:  "Tact Coa"
#   Output: "True (permutations: "Taco cat", "atco cta", etc.)

 #--------------------------------------#
# Searches a given string and determines # 
# if it is a permutation of a palindrom  #
 #--------------------------------------#
def palindromePermutation? string
   
   # This hash map will save number of occurences per letter. 
   occurances = Hash.new(0)
  
   # Add map sets to hash table. 
   string.chars.each do |character|
      occurances[character] = occurances[character] += 1
   end

   # Does the string follow the principles of a palindrome permutation?
   # Note: This means there should be one odd occurance, and all other chars occur an even number of times. 
   oddChar = false 
   hash.each do |occurance|
      if occurance % 2 == 0 # Is odd.
         if !oddChar         
            oddChar = true
         else
            return false
         end
      end
   end

   return true

end 

 #-----------#
# Main Method #
 #-----------#
   # Error checks on input
   if ARGV.length != 1
      puts "Format: /PalindromePermutation.rb <string>"
      return
   end

   stringToBeTested = ARGV[0].chomp   

   palindromePermutation? stringToBeTested

   return
# End of Main
