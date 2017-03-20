require "pry"

def quick_sort(array)
  if array.length <= 1
    return array
  else
    pivot = array.shift
    left = array.map {|x| x if x <= pivot}.compact
    right = array.map {|x| x if x >= pivot}.compact
  end
  [quick_sort(left), pivot, quick_sort(right)].flatten.compact
end

ary = [5, 8, 1, 3, 7, 9, 2]

p quick_sort(ary)
