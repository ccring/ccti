def find_smallest(array)
  smallest_so_far = nil
  array.each do |ele|
    if (smallest_so_far == nil) || ele < smallest_so_far
      smallest_so_far = ele
    end
  end
  smallest_so_far
end


p find_smallest([5,4,6,3]) == 3
p find_smallest([]) == nil
p find_smallest([0,2,2,2,1]) == 0