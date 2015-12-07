def all_uniq?(str)
	tally = {}
	(0..(str.length - 1)).each do |char|
		if !tally[str[char]]
			tally[str[char]] = "yup"
		else
			return false
		end
	end
	true
end

p all_uniq?('asdf') == true
p all_uniq?('ass') == false
p all_uniq?('a') == true
p all_uniq?('aa') == false