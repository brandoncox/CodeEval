'''
You are given two strings \'A\' and \'B\'. Print out a 1 if string \'B\' occurs at the end of string \'A\'. Else a zero.
'''

File.open(ARGV[0]).each_line do |line|
  parts =  line.split(',')
  if parts[0].strip.end_with? parts[1].strip
    puts '1'
  else
    puts '0'
  end
end
