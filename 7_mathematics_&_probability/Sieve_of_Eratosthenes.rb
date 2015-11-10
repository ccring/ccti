# Hello friend.
# Let us find all the primes through:
max = 500

# Aha! I have it. We shall take an array of all natural numbers from 2 through max:
nums = (2..max).to_a

# And then, starting at the lowest number, systematically take out all numbers that are both above it (not equal to itself) and are evenly divisible by it. 

# We only need to scan up through the square root of max.

highest_scan = Math.sqrt(max).to_i
p "highest_scan: #{highest_scan}"
nums.each do |num|
	break if num > highest_scan
	p "num: #{num}"
	nums.reject! {|x| x != num && x % num == 0}
end
p nums

# double-checking: it works
require 'prime'
p Prime.take_while {|x| x < max}