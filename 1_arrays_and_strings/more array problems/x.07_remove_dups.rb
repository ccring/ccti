def remove_duplicates(array)
  hash = {}
  array.each do |ele|
    if !hash[ele]
      hash[ele] = 1
    end
  end
  hash.keys
end

# def remove_duplicates(array)
#   array.uniq
# end

p remove_duplicates([1,2,3,2,3,4]) == [1,2,3,4]