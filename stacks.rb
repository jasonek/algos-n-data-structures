require 'pry'
class Element
  attr_accessor :value, :next
  def initialize(value)
    @value = value
    @next
  end
end

class LinkedList
  attr_accessor :head, :value

  def initialize(head=nil)
    @head = head
  end

  def append(new_element)
    current = @head
     if @head
        # binding.pry
       while current.next
         current = current.next
       end
       current.next = new_element
     else
       @head = new_element
     end
  end

#####
  def get_position(pos_num)
    current = @head
    i = 1
    while i <= pos_num
      current = current.next
      i += 1
    end
    return current
  end

  def insert(new_element, pos_num)
    left_side = self.get_position(pos_num)
  end

  def return_list
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
  end
#######

  def insert_first(new_element)
    new_element.next = @head
    @head = new_element
  end

end

class Stack
  def initialize(top)
    @ll = LinkedList.new
    @ll.append(top)
  end

  def push(new_element)
    ll_length = @ll.return_list.length
    end_elm = @ll.get_position(ll_length)
    end_elm.next = new_element
  end

end

elm1 = Element.new(3)
elm2 = Element.new(9)
elm3 = Element.new(5)
elm4 = Element.new(6)

mylist = LinkedList.new
binding.pry

mylist.append(elm1)
