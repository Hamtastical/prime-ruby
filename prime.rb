# Add  code here!
def prime?(num)
    (1..(num - 1)).each do |n|
         if num % n == 0
           true
         else num %n != 0
            false
         end
      end
    end