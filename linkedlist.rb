require 'pry'
class Element
  def initialize(value)
    @value = value
    @next
  end
end

class LinkedList
  def initialize(head=nil)
    @head = head
  end

  def append(new_element)
    current = @head
     if @head
       while current.next
         current = current.next
       end
       current.next = new_element
       puts 'what else?'
     else
       @head = new_element
     end
  end
end

elm1 = Element.new(3)
elm2 = Element.new(9)

mylist = LinkedList.new
binding.pry

mylist.append(elm1)
