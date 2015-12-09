# An array contains n numbers ranging from 0 to n-2. There is exactly one number repeated in the array. Write a program to find that duplicate number.

def find_duplicate(array)
	len = array.length - 2
	array.inject(:+) - [*0..len].inject(:+)
end

p find_duplicate([0,1,2,3,1]) == 1
p find_duplicate([0,0,1,2,3]) == 0
p find_duplicate([5,4,6,0,1,2,3,3]) == 3