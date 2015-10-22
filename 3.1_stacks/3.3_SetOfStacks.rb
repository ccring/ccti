require_relative 'stack'

class SetOfStacks
  
  attr_reader :max
  attr_accessor :latest_stack, :old_stacks
  
  def initialize(max)
    @stack_1 = Stack.new(max)
    @max = max
    @latest_stack = @stack_1
    @old_stacks = []
  end
  
  def push(value)
    latest_stack.push(value)
    if latest_stack.is_full?
      old_stacks << latest_stack
      self.latest_stack = Stack.new(max)
    end
  end
  
  def pop
    latest_stack.pop
    if latest_stack.is_empty?
      self.latest_stack = old_stacks[-1]
    end
  end
  
  def peek
    latest_stack.peek    
  end
  
  def is_empty?
    old_stacks.empty? && latest_stack.is_empty?    
  end
  
end

new_set = SetOfStacks.new(3)
('a'..'g').each do |letter|
  new_set.push(letter)
end
# p new_set
new_set.pop
# new_set.pop
p new_set
