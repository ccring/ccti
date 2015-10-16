require 'pry'

class Tree
  attr_accessor :children, :value

  def initialize(v)
    @value = v
    @children = []
  end
end

binding.pry