def plusminus(size, array)
    hash = {:positive => 0, :negative => 0, :zeroes => 0}
    array.each do |num|
        if num > 0
            hash[:positive] += 1
        elsif num < 0
            hash[:negative] += 1
        elsif num == 0
            hash[:zeroes] += 1
        end
    end
    hash
end

def printhashfractions(hash)
    total_sum = 0.0
    hash.each {|k,v| total_sum += v}
    hash.each do |k,v|
        printf "%.6f \n", (v/total_sum)
    end
end





n = 6
arr = [-4,3,-9,0,4,1]
printhashfractions(plusminus(n,arr))
