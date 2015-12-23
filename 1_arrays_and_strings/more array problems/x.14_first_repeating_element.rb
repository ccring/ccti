def first_repeating_element(array)
  hash = {}
  array.each do |ele|
    return ele if hash[ele]
    hash[ele] = true
  end
  nil
end

p first_repeating_element([1,3,4,1]) == 1
p first_repeating_element([1,2]) == nil