'''
You are given a sorted array of positive integers and a number \'X\'. Print out all pairs of numbers whose sum is equal to X. 
Print out only unique pairs and the pairs should be in ascending order

Input sample:

Your program should accept as its first argument a filename. This file will contain a comma separated list of sorted numbers and then the sum \'X\', 
separated by semicolon. Ignore all empty lines. If no pair exists, print the string NULL eg.

1,2,3,4,6;5
2,4,5,6,9,11,15;20
1,2,3,4;50
Output sample:

Print out the pairs of numbers that equal to the sum X. The pairs should themselves be printed in sorted order i.e the first number of each pair should be in ascending order .e.g.

1,4;2,3
5,15;9,11
NULL
'''

def print_values(values)
  display = ""
  if values.size == 0
    display = "NULL"
  else
    values.each do |k,v|
      display << "#{k},#{v};"
    end
  end
  if display.eql? "NULL" 
    puts display 
  else
    puts display.chop 
  end
end


File.open(ARGV[0]).each_line do |line|
  line = line.strip
  values = line.split(";")
  expected_sum = values[1].to_i
  pool = values[0].split(",")
  sums = {}
  pool.each_with_index do |p, pi|
    pool.each_with_index do |j, ji|
      if ((p.to_i + j.to_i) == expected_sum)
          sums[p] = j unless (sums[p].eql? j or sums[j].eql? p or pi == ji)
      end
    end
  end
  print_values(sums)
end
