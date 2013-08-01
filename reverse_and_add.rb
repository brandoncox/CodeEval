inputs = []
@count = 1

File.open(ARGV[0]).each_line { |line| inputs << line}

def calculate(value)
  value = value + value.to_s.reverse.to_i
  if palinidrome? value
    puts "#{@count} #{value}"
    @count = 0
  else
    @count = @count + 1
    calculate(value)
  end
end

def palinidrome? (value )
  value.to_s.reverse.eql? value.to_s
end


inputs.each do |line| 
    calculate(line.to_i)
end