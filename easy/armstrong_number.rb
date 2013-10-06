'''
An Armstrong number is an n-digit number that is equal to the sum of the n\'th powers of its digits. Determine if the input numbers are Armstrong numbers.

Input sample:

Your program should accept as its first argument a path to a filename. Each line in this file has a positive integer. E.g.

6
153
351
Output sample:

Print out True/False if the number is an Armstrong number or not. E.g.

True
True
False
'''
def raised(number, power)
  val = number
  for i in 1...power do
    val = val * number
  end
  val
end

File.open(ARGV[0]).each_line do |line|
  line = line.strip
  power = line.length
  sum = 0
  line.split("").each do |n|
    sum = sum + raised(n.to_i, power)
  end
  if sum.to_s.eql? line
    puts 'True'
  else
    puts 'False'
  end
end
