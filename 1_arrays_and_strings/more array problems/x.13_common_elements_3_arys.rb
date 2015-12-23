# How to find common elements in three sorted arrays?

def common_elements(array1, array2, array3)
  i, j, k = 0,0,0
  result = []
  while i < array1.length && j < array2.length && k < array3.length
    if array1[i] == array2[j] && array2[j] == array3[k]
      result << array1[i]
      i += 1
      j += 1
      k += 1
    # else increment the least
    elsif array1[i] <= array2[j] && array1[i] <= array3[k]
      i += 1
    elsif array2[j] <= array1[i] && array2[j] <= array3[k]
      j += 1
    elsif array3[k] <= array1[i] && array3[k] <= array2[j]
      k += 1
    end
  end
  result
end

input1 = [1, 5, 10, 20, 40, 80]
input2 = [1, 5, 20, 80, 100]
input3 = [3, 5, 15, 20, 30, 70, 80, 120]
p common_elements(input1, input2, input3) == [5,20,80]
# p common_elements(input1, input2, input3)