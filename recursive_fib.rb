
def get_fib(position)
  return position if (position == 1 || position == 0)
  get_fib(position-1) + get_fib(position-2)
end

puts(get_fib(9)) #=> 34
puts(get_fib(5)) #=> 5
puts(get_fib(1)) #=>1
puts(get_fib(0)) #=> 0
