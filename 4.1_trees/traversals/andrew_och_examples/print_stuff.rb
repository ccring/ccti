# http://www.och.cc/blog/index.php?entry=entry070511-152543

require_relative 'node'
require_relative 'binary_tree'

 #            F
 #         /    \
 #        /      \
 #       /        \
 #      /          \
 #     B            G
 #    / \            \
 #   A   D            I
 #      / \          /
 #     C   E        H

# Assemble Binary Tree
bTree = BinaryTree.new
root = bTree.root
root.value = "F"
 
node = Node.new
node.value = "B"
root.left = node
 
node = Node.new
node.value = "A"
root.left.left = node
 
node = Node.new
node.value = "D"
root.left.right = node
 
node = Node.new
node.value = "C"
root.left.right.left = node
 
node = Node.new
node.value = "E"
root.left.right.right = node
 
node = Node.new
node.value = "G"
root.right = node
 
node = Node.new
node.value = "I"
root.right.right = node
 
node = Node.new
node.value = "H"
root.right.right.left = node

# Print the results
bTree.traverseTypes