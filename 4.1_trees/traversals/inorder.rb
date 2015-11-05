class Node

	def inorder_traversal
		if self.children.any?
			left = children[0]
			right = children[1]
		end
		if left
			left.inorder_traversal
		end
		print self.value + " "
		if right
			right.inorder_traversal
		end
	end

end

require_relative 'example_tree'
@root.inorder_traversal
puts