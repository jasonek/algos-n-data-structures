require 'pry'

locations = {'North America': {'USA': ['Mountain View', 'Atlanta']}, 'Asia': {'China': ['Shanghai'], 'India': ['Bangalore']}, 'Africa': {'Egypt': ['Cairo']} }

def search_hash_for_string(hash, continent, country)
  results_array = []
  new_hash = hash.select {|k,v| k.to_s == continent }.each
  new_hash.each do |key1, value1|
    value1.each do |k2, v2|
      results_array << v2
    end
  end
  results_array.flatten.sort_by {|city| city.downcase}
end

p search_hash_for_string(locations, 'North America', 'USA')
# new_hash.each {|x| p x}
