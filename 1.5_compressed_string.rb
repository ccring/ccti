def compress_string(str)
  arr = []
  prev_char = ""
  temp_count = 1
  (0..(str.length - 1)).each do |char|
    if !(prev_char == str[char])
      arr << str[char]
      arr << temp_count
    else
      temp_count += 1
    end
    prev_char = str[char]
  end
  arr.join
end

p compress_string("aabcccccaaa") == "a2b1c5a3"
p compress_string("aabcccccaaa")