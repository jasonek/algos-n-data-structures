#
# input manatees: a list of "manatees", where one manatee is represented by a hash
# a single manatee has properties like "name", "age", et cetera
# n = the number of elements in "manatees"
# m = the number of properties per "manatee" (i.e. the number of keys in a manatee hash)
manatees = [{name: 'Jim', age: 20}, {name: 'Bob', age: 30}]

def example1(manatees)
  for manatee in manatees
    print manatee['name']
  end
end
#O(n)

def example2(manatees)
  print manatees[0]['name']
  print manatees[0]['age']
end
# O(1)

def example35(manatees)
  manatees.each do |manatee|
    manatee.each do |k,v|
      puts k + ": " + v
    end
  end
end
# O(nm)

def example45(manatees)
  oldest_manatee = 'No manatees here!'
  manatees.each do |manatee1, manatee2|
    if manatee1['age'] < manatee2['age']
      oldest_manatee = manatee2['name']
    else
      oldest_manatee = manatee1['name']
    end
  end
  puts oldest_manatee
end
# O(n^2)
