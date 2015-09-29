def is_rotation?(s1, s2)
	return false if s1.length != s2.length
	if s1 == s2
		return true
	else
		rot_str = rotate_str(s2)
		while s2 != rot_str
			return true if s1 == rot_str
			rot_str = rotate_str(rot_str)
		end
	end
	false
end

def rotate_str(str)
	str[-1] + str[0..-2]
end


p is_rotation?('abc', 'cab') == true
p is_rotation?('abc', 'a') == false
p is_rotation?('abc', 'abcabc') == false
p is_rotation?('abc', 'ca') == false
p is_rotation?('abc', 'acb') == false
p is_rotation?('abc', 'abx') == false