require 'pry'

class Node
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def search_node(node, search_value) # search the tree for a certain value
    return false if (node.value != search_value) && node.left.nil? && node.right.nil?
    return true if (node.value == search_value)
    search_node(node.left, search_value) || search_node(node.right, search_value)
  end

end

class BinaryTree
  attr_accessor :root

  def initialize(root=nil)
    @root = Node.new(root) # makes a new node with value of root and nil L/R
    @result_array = []
  end

  def search_tree(search_val)
    self.root.search_node(self.root, search_val)
  end

  def print_tree() # print out all nodes as they are visited in pre-order order
    preorder_print(self.root)
    @result_array.join('-')
  end

  def preorder_print(node)
    @result_array << node.value
    return if node.left.nil? && node.right.nil?
    preorder_print(node.left) || preorder_print(node.right)
  end

end


tree = BinaryTree.new(1)
tree.root.left = Node.new(2)
tree.root.right = Node.new(3)
tree.root.left.left = Node.new(4)
tree.root.left.right = Node.new(5)

# Test search
# Should be True
p tree.search_tree(4)
# Should be False
p tree.search_tree(6)

# Test print_tree
# Should be 1-2-4-5-3
p tree.print_tree()
