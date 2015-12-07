def all_uniq?(str)
	(0..(str.length - 1)).each_with_index do |char, i|
		(0..(str.length - 1)).each_with_index do |other_char, j|
			if i != j && str[char] == str[other_char]
				return false
			end
		end
	end
	true
end

p all_uniq?('asdf') == true
p all_uniq?('ass') == false
p all_uniq?('a') == true
p all_uniq?('aa') == false