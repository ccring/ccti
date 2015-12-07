def permutation?(string1, string2)
	hash1 = {}
	(0..string1.length - 1).each do |i|
		char = string1[i]
		hash1[char] ? hash1[char] += 1 : hash1[char] = 1
	end
	hash2 = {}
	(0..string2.length - 1).each do |j|
		char = string2[j]
		return false if !hash1[char]
		hash2[char] ? hash2[char] += 1 : hash2[char] = 1
		return false if hash2[char] > hash1[char]
	end

	hash1 == hash2
end

p permutation?("abcb","bbac") == true
p permutation?("abcb","bbacc") == false
p permutation?("abcb","bba") == false