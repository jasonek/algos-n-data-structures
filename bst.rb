require 'pry'

class Node
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

end

class BST
  attr_accessor :root

  def initialize(root=nil)
    @root = Node.new(root) # makes a new node with value of root and nil L/R
  end

  def insert(node,new_val)
    # start on root always
    # if new_val < node.value
      insert(node.left, new_val) if new_val < node.left.value # recursive call
      actually_insert(node, node.right) if new_val > node.left.value# insert new_val between current node and next node
  end

  def insert_left(first_node, second_node, new_val) # actually inserts the value into BST
    # new_node = Node.new(new_val)
    # first_node.left = new_node
    # new_node.(L OR R) = second_node
  end

  def search(search_val)
  end

end



# Set up tree
tree = BST.new(4)

# Insert elements
tree.insert(2)
tree.insert(1)
tree.insert(3)
tree.insert(5)

# Check search
# Should be True
print tree.search(4)
# Should be False
print tree.search(6)
