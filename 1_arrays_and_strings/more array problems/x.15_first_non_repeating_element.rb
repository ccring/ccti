def first_non_repeating_element(array)
  hash = {}
  return nil if array.empty?
  hash[array.first] = true
  array[1..-1].each do |ele|
    return ele if !hash[ele]
  end
  nil
end

p first_non_repeating_element([1,1,1,1,1,3]) == 3
p first_non_repeating_element([9,8]) == 8
p first_non_repeating_element([9]) == nil
p first_non_repeating_element([]) == nil