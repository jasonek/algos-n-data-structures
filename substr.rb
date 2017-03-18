require 'pry'

def substr(str_array, substr)
  result = false
  str_array.each_with_index do |char, idx|
    if char == substr[0]
      check_remaining_substring(str_array, idx, substr) ? (result = idx) : false # could be an index number or false
    end
  end
  return result
end

def check_remaining_substring(str_array, index, substr)
  (index..str_array.length).each_with_index { |num, i| return false unless str_array[num] == substr[i] }
end

p substr(['a','b','c','d','d','e','f'], ['d','e','f']) # returns index of beginning of substring, or 4
ary = %w( i l o v e c a t s)
subb = %w(c a t s)
p substr(ary, subb)


# def find_substring(str_array, substr, str_idx = 0, sub_idx = 0)
#   if sub_idx == substr.length-1
#     substr[sub_idx] == str_array[str_idx] ? return true : return false
#   else
#     if substr[sub_idx] == str_array[str_idx]
#       find_substring(str_array, substr, str_idx += 1, sub_idx += 1)
#     else # if they are not equal
#
#     end
#     # compare then return
#   end
#   # compare substring[0] with each char in array
#   # return if you reach end of substring, which will only happen if each before it matches
# end
#
# p find_substring(ary, subb)
