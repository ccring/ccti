# You are given an integer array which contains numbers all the numbers from 1 to 100 except that one number is missing. Write a program that finds the missing number.

def find_missing_number(array)
	(1..100).inject(:+) - array.inject(:+)
end