require "pry"

def reduce_string(str)
  str = str.split('') unless str.is_a? Array
  i_deleted_something = false

  (0..str.length-1).each do |i|
    if str[i] == str[i+1]
      str.delete_at(i+1) && str.delete_at(i)
      i_deleted_something = true
    end
  end

  if str.empty?
    return "Empty String"
  elsif i_deleted_something
    reduce_string(str)
  else
    str.join('') unless str.is_a? String
  end

end

print reduce_string("lesttser")
