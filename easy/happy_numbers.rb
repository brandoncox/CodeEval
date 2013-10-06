'''
A happy number is defined by the following process. Starting with any positive integer, replace the number by the sum of the squares 
of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not 
include 1. Those numbers for which this process ends in 1 are happy numbers, while those that do not end in 1 are unhappy numbers.

Input sample:

The first argument is the pathname to a file which contains test data, one test case per line. Each line contains a positive integer. E.g.

1
7
22
Output sample:

If the number is a happy number, print out 1. If not, print out 0. E.g

1
1
0
For the curious, here\'s why 7 is a happy number\: 7->49->97->130->10->1. Here\'s why 22 is NOT a happy number\: 22->8->64->52->29->85->89->145->42->20->4->16->37->58->89 ...
'''

# takes a number in string format as a parameter. Then squares each individual number returns the sum of the squares.
# ex, 24 -> 2^2 = 4 & 4^2 = 16 therefore 16 + 4 = 20
def square_and_sum(number)
  numbers = number.strip.split("")
  sum = 0
  numbers.each do |n|
    sum = sum + ( n.to_i * n.to_i ) 
  end
  return sum
end


File.open(ARGV[0]).each_line do |line|
  happy = false # =)
  unhappy = false # =(
  
  begin
    
    line = square_and_sum line.to_s
  
    if line == 1 then happy = true end
    # If we hit four and its not the original input, this is going to be an infinite loop so lets call this tea party short -_-
    if line == 4 then unhappy = true end
  
  end until happy or unhappy
  if happy then puts 1 else puts 0 end
end


