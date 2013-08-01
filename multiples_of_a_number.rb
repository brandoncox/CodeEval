File.open(ARGV[0]).each_line do |a|
  input = a.split(',')
  i = input[0].to_i
  j = input[1].to_i
  k = 1
  continue = true
  while(continue)
    if j * k >= i
      puts j * k
      continue = false
    end
    k += 1
  end
end
exit 0