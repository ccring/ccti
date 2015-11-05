class Node

	def preorder_traversal
		print self.value + " "
		self.children.each do |child|
			child.preorder_traversal
		end
	end

end

require_relative 'example_tree'
@root.preorder_traversal
puts


=begin

Note, I was really tempted to use this structure:

if self.children.any?
	// do stuff
	// make a recursive call
else
	// do other stuff
	// make a recursive call
end

But it turns out #each works such that if a node doesn't have any children, #each just doesn't execute.  So the method can take a pretty simple form.

=end
