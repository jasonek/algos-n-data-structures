
def get_fib(position)
  if position == 1
    return 1
  elsif position <= 0
    return 0
  else
    get_fib(position-1) + get_fib(position-2)
  end
end

puts(get_fib(9)) #=> 34
puts(get_fib(5)) #=> 5
puts(get_fib(1)) #=>1
puts(get_fib(0)) #=> 0
