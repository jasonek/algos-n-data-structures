class Node
  def initialize(value, left=nil, right=nil)
    @value = value
    @left = left
    @right = right
  end

  def search(value) # search the tree for a certain value
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

class BinaryTree
  def initialize(root=nil)
    @root = root
  end
end
