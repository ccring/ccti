# cf. DBC Whiteboarding
# https://github.com/lorenanicole/Whiteboarding-DBC-Chicago

class Node
	attr_accessor :next, :value
	def initialize(value = nil, next_node = nil)
		@value = value
		@next = next_node
	end
end

class LinkedList
	attr_accessor :head
	def initialize(head = Node.new)
		@head = head
	end

	def add_node_to_end(node = Node.new)
		next_node = @head.next
		if !next_node
			@head.next = node
		else
			until !next_node.next
				next_node = next_node.next
			end
			next_node.next = node
		end
	end
end