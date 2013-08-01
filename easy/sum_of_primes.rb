known_primes = [ 2, 3, 5]
current_sum = 10
prime_count = 4
curr = 7
while prime_count <= 1000
  if curr > 5
    if !known_primes.include? curr
      prime = true
      known_primes.each do |t| if curr % t == 0 then prime = false end end
      if prime 
        curr.times do |tmp_divisor|
          if tmp_divisor > 5
            if curr % tmp_divisor == 0 then prime = false end
            end
        end
      end
      if prime
        current_sum = current_sum + curr  
        prime_count = prime_count + 1
      end
    end
  end
  curr = curr + 1
end

puts current_sum
exit 0
