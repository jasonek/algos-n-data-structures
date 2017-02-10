
class Array
  def quicksort
    return [] if self.empty?

    pivot = self.delete_at(rand(size))
    left, right = self.partition { |half| half < pivot }

    return [left.quicksort, pivot, right.quicksort].flatten
  end
end


test = [21, 4, 1, 3, 9, 20, 25, 6, 21, 14]
print test.quicksort
