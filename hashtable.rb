class HashTable
  def initialize
    @table = Array.new(10000)
  end

  def store(string)
    array_index = calculate_hash_value(string)
    if @table[array_index].nil?
      @table[array_index] = []
      @table[array_index] << string
    else
      @table[array_index] << string
    end
  end

  def lookup(string)
    array_index = calculate_hash_value(string)
    @table[array_index].nil? ? -1 : array_index
  end

  def calculate_hash_value(string)
    (string[0].ord * 100) + string[1].ord if string.is_a? String
  end

  def print_index(index)
    @table[index]
  end

end


myhashtable = HashTable.new

p myhashtable.calculate_hash_value("Delicious")
p myhashtable.store("Delicious")
p myhashtable.store("Deli")
p myhashtable.print_index(6901)
p myhashtable.lookup("Deli")
