require 'pry'

class Node
  attr_accessor :value, :left, :right

  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def has_children?(node)
    true unless (node.left.nil?) && (node.right.nil?)
  end

  def search_node(node, search_value) # search the tree for a certain value
    return true if (node.value == search_value)
    search_node(node.left, search_value) || search_node(node.right, search_value) if has_children?(node)
  end


end

class BinaryTree
  attr_accessor :root

  def initialize(root=nil)
    @root = Node.new(root) # makes a new node with value of root and nil L/R
  end

  def search_tree(search_val)
    self.root.search_node(self.root, search_val)
  end

  def print_tree() # print out all nodes as they are visited in pre-order order
  end

  def preorder_search(start, find_val)
    # """Helper method - use this to create a
    # recursive search solution."""
    return False
  end

  def preorder_print(start, traversal)
    # """Helper method - use this to create a
    # recursive print solution."""
    return traversal
  end

end


tree = BinaryTree.new(1)
tree.root.left = Node.new(2)
tree.root.right = Node.new(3)
tree.root.left.left = Node.new(4)
tree.root.left.right = Node.new(5)

p tree.search_tree(1)

# Test search
# Should be True
# print tree.search(4)
# Should be False
# print tree.search(6)

# Test print_tree
# Should be 1-2-4-5-3
# print tree.print_tree()
