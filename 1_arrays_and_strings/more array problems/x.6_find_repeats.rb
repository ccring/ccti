def find_repeats(array)
  result = {}
  array.each do |ele|
    if !result[ele]
      result[ele] = 1
    else
      result[ele] += 1
    end
  end
  result.select {|k,v| k if v > 1}.keys
end

p find_repeats([1,2,3,2,3,4])