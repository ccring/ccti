# http://stackoverflow.com/questions/7196430/implementing-tree-with-ruby

require 'pry'

class Tree
  attr_accessor :children, :value

  def initialize(v)
    @value = v
    @children = []
  end
end

binding.pry