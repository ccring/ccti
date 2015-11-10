# http://stackoverflow.com/questions/12720771/adjacency-list-and-graph

# cf. http://www.sitepoint.com/graph-algorithms-ruby/

class Node

  attr_reader :name, :successors

  def initialize(name)
    @name = name
    @successors = []
  end

  def add_edge(successor)
    @successors << successor
  end

  def to_s
    "#{@name} -> [#{@successors.map(&:name).join(' ')}]"
  end

end


class Graph

  attr_reader :nodes

  def initialize(nodes = {})
    @nodes = nodes
  end

  def add_node(node)
    @nodes[node.name] = node
  end

  def add_edge(predecessor_name, successor_name)
    @nodes[predecessor_name].add_edge(@nodes[successor_name])
  end

  def [](name)
    @nodes[name]
  end

  def display
    nodes.map do |name, node|
      node.to_s
    end
  end

end