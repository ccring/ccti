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
	print self.value
	# make a recursive call of the method on each of self's children
else ### base case
	print self.value
	### (no recursive call in this case; method just ends and then we go back up one level in the stack of recursive calls)
end

But it turns out #each works such that if a node doesn't have any children, #each just doesn't execute.  I.e. [].each{} doesn't execute, so it's the base case.  No need to explicitly declare it.  So the method can take a pretty simple form.

=end
