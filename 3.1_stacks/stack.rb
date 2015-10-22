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
    first_nil_index = store.find_index(nil)
    first_nil_index ||= max
    # temp = store[first_nil_index - 1]
    store[first_nil_index - 1] = nil
    # return temp
  end

  def push(value)
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