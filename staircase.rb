def makestair(size)
  array_of_arrays = Array.new(size,[])
  (0..size-1).each do |intgr|
    array = fillarraybelow(Array.new(size," "), intgr, "#")
    array_of_arrays[intgr] = array.reverse
  end
  printstair(array_of_arrays)
end


def fillarraybelow(array,index,element_to_fill)
  (0..index).each do |idx|
    array[idx] = element_to_fill
  end
  return array
end

def printstair(array_of_arrays)
  array_of_arrays.each do |ary|
    print ary.join('') + "\n"
  end
end

makestair(5)
