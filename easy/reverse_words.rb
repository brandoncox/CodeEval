File.open(ARGV[0]).each_line do |a|
  line = a.split(' ')
  my_str = ''
  line.reverse_each do |t|
    my_str << t + ' '
  end
  puts my_str
end
exit 0