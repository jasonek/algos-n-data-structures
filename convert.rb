require "pry"

def converttime(time)
  if time[0..1].to_i == 12

    if time[-2].upcase == 'A'
      time_arr = time[0..-3].split(':')
      time_arr[0] = "00"
      time = time_arr.join(':')
    elsif time[-2].upcase == 'P'
      time = time[0..-3]
    end

    return time
  end

    if time[-2] == 'A'
        time = time[0..-3]
    elsif time[-2] == 'P'
        time_arr = time[0..-3].split(':')
        time_arr[0] = time_arr[0].to_i + 12
        time = time_arr.join(':')
    end
    time
end

print converttime('07:05:45PM')
print "AM: " + converttime('12:05:45AM')
print "PM: " + converttime('12:05:45PM')
