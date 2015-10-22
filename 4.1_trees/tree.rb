# inspired by:  http://stackoverflow.com/questions/7196430/implementing-tree-with-ruby


class Node
  attr_accessor :children, :value

  def initialize(v, *children)
    @value = v
    @children = children
  end
end

# require 'pry'
# binding.pry