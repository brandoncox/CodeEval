def magic?(num)
	size = num.size
	last = num[size-1]

	if last % size != 1
		return false
	else
		(0...size).each do |a|
			if num[a] + a < size
				if num[num[a] + a] == num[a]
					return false
				end
			else
				loc = (num[a] + a) % size
				if num[loc] == num[a]
					return false
				end
			end
		end
	end
	true
end

def process_input(lines)
  lines.each do |line|
	  la = line.split(" ")
	  low = la[0]
	  upper = la[1]
	  magic_nums = []

	  (low.to_i..upper.to_i).each do |i| 
	  	magic_nums << i if magic? i.to_s.split('').map(&:to_i)
	  end
	  if magic_nums.size == 0
	  	puts -1
	  else
	  	puts magic_nums.join(' ')
	  end
	end
end

lines = []
File.open(ARGV[0]).each_line do |line|
  lines << line
end
process_input lines
