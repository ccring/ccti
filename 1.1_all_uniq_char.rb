def all_uniq?(str)
	tally = {}
	(0..(str.length - 1)).each do |char|
		if !tally[str[char]]
			tally[str[char]] = 1
		else
			return false
		end
	end
	true
end

p all_uniq?('asdf')
p all_uniq?('ass')
p all_uniq?('a')
p all_uniq?('aa')