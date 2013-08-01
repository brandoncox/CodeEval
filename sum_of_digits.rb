File.open(ARGV[0]).each_line do |line|
  arr = line.split('')
  sum = 0
  arr.each do |t|
    sum += t.to_i
  end
  puts sum
end
exit 0