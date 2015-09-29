def compress_string(str)
  arr = []

  # start by sticking in the first character and starting the counter
  prev_char = str[0]
  arr << prev_char
  temp_count = 1
  
  (1..(str.length - 1)).each do |i|
    if !(prev_char == str[i])
      arr << temp_count
      temp_count = 1
      arr << str[i]
    else
      temp_count += 1
    end
    prev_char = str[i]
    arr << temp_count if i == str.length - 1
  end
  arr.join
end

p compress_string("aabcccccaaa") == "a2b1c5a3"
p compress_string("aabcccccaaa")