def top_two(array)
  highest_so_far = nil
  second_highest_so_far = nil

  array.each do |ele|
    if highest_so_far == nil || ele > highest_so_far
      second_highest_so_far = highest_so_far
      highest_so_far = ele
    elsif second_highest_so_far == nil || ele > second_highest_so_far && ele < highest_so_far
      second_highest_so_far = ele
    end
      
  end

  [second_highest_so_far, highest_so_far]
end

p top_two([1,5,2,7,2,8,]) == [7,8]
p top_two([-1,-5,-2,-7,-2,-8,]) == [-2,-1]
p top_two([-1]) == [nil, -1]