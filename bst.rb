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

  def insert(new_val)
    if find_closest_node(new_val) == false
      p "Node with value #{new_val} already exists"
      return
    end
    linking_node = find_closest_node(new_val)
    if linking_node.is_a? Array
      if new_val > linking_node[0].value
        linking_node[0].right = Node.new(new_val)
        linking_node[0].right.right = linking_node[1]
      elsif new_val < linking_node[0].value
        linking_node[0].left = Node.new(new_val)
        linking_node[0].left.left = linking_node[1]
      end
    elsif new_val > linking_node.value
      linking_node.right = Node.new(new_val)
    elsif new_val < linking_node.value
      linking_node.left = Node.new(new_val)
    end
  end

  def search(search_val)
    last_node = find_closest_node(search_val)
    last_node.value == search_val ? true : false
  end

  def find_closest_node(search_val, node = self.root)
    if search_val == node.value
      return node

    elsif search_val > node.value

      if node.right.nil?
        return node
      elsif search_val > node.right.value
        find_closest_node(search_val, node.right)
      elsif search_val < node.right.value
        return [node, node.right]
      elsif search_val == node.right.value
        return node
      end

    elsif search_val < node.value

      if node.left.nil?
        return node
      elsif search_val < node.left.value
        find_closest_node(search_val, node.left)
      elsif search_val > node.left.value
        return [node, node.left]
      elsif search_val == node.left.value
        return node
      end

    end

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
p tree.search(4)
# Should be False
p tree.search(6)
