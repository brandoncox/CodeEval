'''
Challenge Description:

Write a program to remove specific characters from a string.

Input sample:

The first argument will be a text file containing an input string followed by a comma and then the characters that need to be scrubbed. e.g. 

how are you, abc
hello world, def
Output sample:

Print to stdout, the scrubbed strings, one per line. Trim out any leading/trailing whitespaces if they occur. 
e.g.

how re you
hllo worl
'''

File.open(ARGV[0]).each_line do |line|
  line_arr = line.split(',')
  prnt_str = line_arr[0]
  line_arr[1].each_char { |t| prnt_str = prnt_str.delete(t.strip) }
  puts prnt_str
end
