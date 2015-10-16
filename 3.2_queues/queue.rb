# from https://rubymonk.com/learning/books/4-ruby-primer-ascent/chapters/33-advanced-arrays/lessons/86-stacks-and-queues

# first in, first out.

class Queue
  def initialize
    @store = Array.new
  end
  
  def dequeue
    @store.pop
  end
  
  def enqueue(element)
    @store.unshift(element)
    self
  end
  
  def size
    @store.size
  end
end