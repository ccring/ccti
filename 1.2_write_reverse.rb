# def my_reverse(str)
# 	arr = str.split('')
# 	rev_ary = []
# 	while arr.any?
# 		rev_ary << arr.pop
# 	end
# 	rev_ary.join
# end

def my_reverse(str)
	arr = str.split(//)
	rev_ary = []
	arr.each do |char|
		rev_ary.unshift(char)
	end
	rev_ary.join
end

p my_reverse('hello') == 'olleh'
p my_reverse('hello')
p my_reverse('hah') == 'hah'
p my_reverse('h') == 'h'