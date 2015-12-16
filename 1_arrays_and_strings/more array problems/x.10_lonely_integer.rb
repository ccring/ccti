def lonely_integer(array)
  hash = {}
  array.each do |ele|
    if !hash[ele]
      hash[ele] = 1
    else
      hash[ele] += 1
    end
  end
  hash.find {|key, value| return key if value < 2}
end

p lonely_integer([1, 1, 2, 2, 3, 4, 4, 5, 5]) == 3
# p lonely_integer([1, 1, 2, 2, 3, 4, 4, 5, 5])