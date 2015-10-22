# http://www.och.cc/blog/index.php?entry=entry070511-152543

class Node
  attr_reader :left, :right, :value
  attr_writer :left, :right, :value
 
  def initialize()
    @left = nil
    @right = nil
    @value = nil
  end
end