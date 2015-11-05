class Node

	def postorder_traversal
		if self.children.any?
			left = children[0]
			right = children[1]
		end
		if left
			left.postorder_traversal
		end
		if right
			right.postorder_traversal
		end
		print self.value + " "
	end

end

require_relative 'example_tree'
@root.postorder_traversal
puts