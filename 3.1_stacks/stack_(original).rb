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