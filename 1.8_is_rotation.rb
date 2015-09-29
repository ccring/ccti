def is_rotation?(s1, s2)
	return false if s1.length != s2.length
	if s1 == s2
		return true
	else
		rot_str = s2[-1] + s2[0..-2]
		is_rotation?(s1, rot_str)
	end
end


p is_rotation?('abc', 'cab') == true
p is_rotation?('abc', 'a') == false
p is_rotation?('abc', 'abcabc') == false
p is_rotation?('abc', 'ca') == false
p is_rotation?('abc', 'acb') == false
p is_rotation?('abc', 'abx') == false