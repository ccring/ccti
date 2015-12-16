def find_summed_pairs(sum, array)
  result = {}
  array.each do |i|
    array.each do |j|
      if i + j == sum
        result[i] = j unless result[j]
      end
    end
  end
  result
end

p find_summed_pairs(5,[1,2,3,4]) == {1=>4, 2=>3}
p find_summed_pairs(5,[1,2,3,4,3,2,1]) == {1=>4, 2=>3}
p find_summed_pairs(5,[-1,2,3,-4]) == {2=>3}
