# Add  code here!

require "pry"

def prime?(num) #method will take in num(any number inputted to run through the method)
    if num <= 0 or num == 1 #first check that number is greater than OR equal to 0, oor equal to 1 (check specs)
        return false #will return FALSE if any number IS less than or equal to 0 OR equal to 1. Will stop here and end method.

        #if above returns true, we then move to below.
    else 
    (2..num-1).to_a.all? do |possible_factor| #(2..num-1).to_a.all? will go through factor(possible_factors) and go up to the number inputted -1. Will then call the possible_factors in the black || and move below.
         num % possible_factor != 0 #this then will divide and calculate the remainder of the number, and if it doesn NOT = 0, it is not a prime and will return FALSE.
         end
     end
end

#extra tips: the all? method returns true if the block NEVER returns false or nil. So if ANY of the results return false, it will read as false. If ANY of the results return True, it is still false because at least one of the results i running is false.
# the above is important in this method.
# - % is a module that divides and results in the remainder

#example of above below.

#def prime?(7) 
    #if 7 <= 0 or 7 == 1 
       # return false 

    #else 
    #(2..7-1(which is now 6)).to_a.all? do |possible_factor(2,3,4,5,6)| 
        # 7 % 2 != 0                REMEMBER: it is not calculating floats(decimals) so any decimal would automatically return 1
        # 7 % 3 != 0 
        # 7 % 4 != 0 
        # 7 % 5 != 0 
        # 7 % 6 != 0 

        #This now returns as a prime, so it is true not False and will run as TRUE.

        #If adding in let's say, 9, it will return at least 0 in 9 % 3 because it goes into 9 3 times, thus making it not a prime and as FALSE cause it is not a prime.
        # Look at all? tip above on regards on why it will return False no matter what.
        #end
     #end
#end