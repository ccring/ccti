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

	def remove_node(index)
		precursor = self.head  # this is temporary
		(index - 2).times do
			precursor = precursor.next
		end
		node_to_remove = precursor.next
		successor = node_to_remove.next
		precursor.next = successor

		# isolate deleted node
		node_to_remove.next = nil
		return node_to_remove
	end

	def insert_node(node, index)
		new_precursor = self.head
		index.times do
			new_precursor = new_precursor.next
		end
		new_successor = new_precursor.next
		new_precursor.next = node
		node.next = new_successor
		return node
	end

end

