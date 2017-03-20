require 'pry'

class Node
  attr_accessor :value, :edges

  def initialize(value)
    @value = value
    @edges = []
  end
end

class Edge
  attr_accessor :value, :node_from, :node_to

  def initialize(value, node_from, node_to)
    @value = value
    @node_from = node_from
    @node_to = node_to
  end
end


class Graph
  attr_accessor :nodes, :edges

  def initialize(nodes=[], edges=[])
    @nodes = nodes
    @edges = edges
  end

  def insert_node(new_node_val)
    @nodes << Node.new(new_node_val)
  end

  def insert_edge(new_edge_val, node_from_val, node_to_val)
    from_found = nil
    to_found = nil

    @nodes.each do |node|
      from_found = node if node_from_val == node.value
      to_found = node if node_to_val == node.value
    end

    if from_found == nil
      from_found = Node.new(node_from_val)
      @nodes << from_found
    end

    if to_found == nil
      to_found = Node.new(node_to_val)
      @nodes << to_found
    end

    new_edge = Edge.new(new_edge_val, from_found, to_found)
    from_found.edges << new_edge
    to_found.edges << new_edge
    @edges << new_edge
  end


  def get_edge_list()
    self.edges.inject([]) { |arr, edge| arr << [edge.value, edge.node_from.value, edge.node_to.value] }
  end

  def get_adjacency_list()
    edge_list = get_edge_list()
    array = Array.new

    edge_list.each do |edge|
      edge_val, node_start, node_end  = edge[0], edge[1], edge[2]
      array[node_start] = [] if array[node_start].nil?
      array[node_start] << [edge_val, node_end]
      array.flatten
    end
    array
  end

  def get_adjacency_matrix()
    adj_list = get_adjacency_list()
    matrix = []

    adj_list.each_with_index do |adj_item, idx|
      matrix[idx] = [0, 0, 0, 0, 0]
      adj_item.each { |pair| matrix[idx][pair[1]] = pair[0] } unless adj_item.nil?
    end

    make_square(matrix)
  end

  def make_square(array_of_arrays)
    while array_of_arrays.size < array_of_arrays[0].size
      array_of_arrays << ([0] * array_of_arrays[0].size) # Add zeros arrays until the matrix is a squares
    end
    array_of_arrays
  end
end


graph = Graph.new
graph.insert_edge(100, 1, 2)
graph.insert_edge(101, 1, 3)
graph.insert_edge(102, 1, 4)
graph.insert_edge(103, 3, 4)
# Should be [(100, 1, 2), (101, 1, 3), (102, 1, 4), (103, 3, 4)]
# print graph.get_edge_list()
# Should be [None, [(2, 100), (3, 101), (4, 102)], None, [(4, 103)], None]
# print graph.get_adjacency_list()
# Should be [[0, 0, 0, 0, 0], [0, 0, 100, 101, 102], [0, 0, 0, 0, 0], [0, 0, 0, 0, 103], [0, 0, 0, 0, 0]]
print graph.get_adjacency_matrix()
