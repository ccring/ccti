# based on the associated PowerPoint.
# cf. https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/86-stacks-and-queues

# last in, first out.

# class Stack

# 	attr_accessor :store

# 	def initialize
# 		@store = []
# 	end

# 	def peek
# 		store[-1]
# 	end

# 	def pop
# 		# store.pop would also work
# 		store.delete_at(-1)
# 	end

# 	def push(value)
# 		# store.push(value) would also work
# 		store.concat([value])
# 	end

# 	def is_empty?
# 		peek == nil
# 	end

# end

class Stack

  attr_reader :max
  attr_accessor :store

  def initialize(max)
    @store = Array.new(max)
    @max = max
  end

  def peek
    store[-1]
  end

  def pop
    # store.pop would also work
#     store.delete_at(-1)
    first_nil_index = store.find_index(nil)
    first_nil_index ||= max
    #     temp = store[first_nil_index - 1]
    store[first_nil_index - 1] = nil
#     return temp
  end

  def push(value)
    # store.push(value) would also work
    return false if is_full?
    store[store.find_index(nil)] = value
  end

  def is_empty?
    store.compact == []
  end

  def is_full?
    store == store.compact
  end

end

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

# jays_stack = Stack.new(4)
# p jays_stack.is_empty?
# p jays_stack
# jays_stack.push('hi')
# p jays_stack
# p jays_stack.is_empty?
# jays_stack.push('bye')
# jays_stack.pop
# jays_stack.pop
# p jays_stack

new_set = SetOfStacks.new(3)
('a'..'g').each do |letter|
  new_set.push(letter)
end
# p new_set
new_set.pop
# new_set.pop
p new_set