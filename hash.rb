require 'pry'

locations = {'North America': {'USA': ['Mountain View', 'Atlanta']}, 'Asia': {'China': ['Shanghai'], 'India': ['Bangalore']}, 'Africa': {'Egypt': ['Cairo']} }

def search_hash_for_string(hash, continent, country = nil)
  results_array = []
  new_hash = hash.select {|k,v| k.to_s == continent }.each
  new_hash.each do |key1, value1|
    unless country.nil?
      value1.each {|k2, v2| results_array << v2 }
      results_array = results_array.flatten.sort_by {|city| city[0]}
    else
      value1.each {|country_hash| results_array << country_hash }
      results_array = results_array.sort_by {|k,v| v}
    end
  end
  results_array
end

p 1
p search_hash_for_string(locations, 'North America', 'USA')
p 2
p search_hash_for_string(locations, 'Asia')
