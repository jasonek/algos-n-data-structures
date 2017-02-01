require 'pry'

def binary_search(array, search_value)
  arrlength = array.length
  current_index = (arrlength/2)

  @iterations ||= 0
  @iterations += 1

  @index_total ||= 0

  if search_value == array[current_index]
    puts "Value #{search_value} found at index number #{@index_total}"
  elsif (arrlength == 1) && (array[current_index] != search_value) #Case for when the search value is not in the array; must stop it or will continue indefinitely
    puts "Number not in array"
  elsif search_value < array[current_index]
    front_half = array[0...current_index]
    binary_search(front_half, search_value)
  elsif search_value > array[current_index]
    back_half = array[current_index..-1]
    # if back_half.nil?
    #   return "No dice"
    # else
      binary_search(back_half, search_value)
    # end
  # else
    # puts "Value not found in array"
  end
  puts "Iterations: #{@iterations}"
end

my_array = [3,4,5,10]

binary_search(my_array,5)
