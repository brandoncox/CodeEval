first_line = true
threshold = nil
values = {}

File.open(ARGV[0]).each_line do |line|
    if first_line
      threshold = line.to_i
      first_line = false
    else
      values[line.size] = line
    end
end

values = values.sort
i = 1
values.reverse_each do |k,v|
  puts v
  i += 1
  
  break if i > threshold
end