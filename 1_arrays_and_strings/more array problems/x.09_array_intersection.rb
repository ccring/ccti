def array_intersection(array1, array2)
  result = []
  i,j = 0,0
  while i < array1.length && j < array2.length
    if array1[i] == array2[j]
      result << array1[i]
      i += 1
      j += 1
    elsif array1[i] < array2[j]
      i += 1
    elsif array1[i] > array2[j]
      j += 1
    end
  end
  result
end

p array_intersection([1,2,3],[2,3,4,5]) == [2,3]
p array_intersection([1,2],[3,4,5]) == []
p array_intersection([],[3,4,5]) == []
p array_intersection([3,4,5],[3,4,5]) == [3,4,5]
p array_intersection([],[]) == []
p array_intersection([2,2,2],[2,2,3]) == [2,2]
p array_intersection([1,1,2,2],[1,2]) == [1,2]