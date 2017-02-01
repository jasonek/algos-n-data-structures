require 'pry'

def binary_search(array, search_value, front, back)
  mid = back/2

  if (back <= 1) && (search_value != array[mid])
    # return -1
    puts "No dice"
  elsif search_value == array[mid]
    puts "Value #{search_value} found at index number #{mid}"
  elsif search_value < array[mid]
    binary_search(array, search_value, front, mid - 1)
  elsif search_value > array[mid]
    binary_search(array, search_value, mid + 1, back)
  end

end

my_array = [3,4,5,10, 234, 555, 989]

binary_search(my_array, 555, 0, my_array.length)
