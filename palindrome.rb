require 'pry'

def any_permutation_a_palindrome?(string)
  return "Error" unless string.is_a? String
  hsh = {}
  string.each_char do |char|
    hsh[char] ? hsh[char] +=1 : hsh[char] = 1
  end
  return false if multiple_odd_num_hashvalues?(hsh)
  # now must permut the array.
  array_of_permutations = string.all_possible_permutations
  array_of_permutations.each do |word|
    word == word.reverse ? (return true) : (return false)
  end
end


def multiple_odd_num_hashvalues?(hash) # check hash for multiple letters that have odd numbered values. If so, short circuit because palindrome can have at most 1 letter that occurs an odd number of times
  odds_array = []
  hash.each { |k,v| odds_array << v if v.odd? }
  odds_array.length > 1 ? true : false
end

class String
  def all_possible_permutations
    self.chars.to_a.permutation.map(&:join)
  end
end


p any_permutation_a_palindrome?("jhlokolhj")
