# http://rosettacode.org/wiki/Tree_traversal

# http://rosettacode.org/wiki/Tree_traversal

 #         1
 #        / \
 #       /   \
 #      /     \
 #     2       3
 #    / \     /
 #   4   5   6
 #  /       / \
 # 7       8   9

# The correct output should look like this:

# preorder:    1 2 4 7 5 3 6 8 9
# inorder:     7 4 2 5 1 8 6 9 3
# postorder:   7 4 5 2 8 9 6 3 1
# level-order: 1 2 3 4 5 6 7 8 9

# Note: this example is a binary tree. Even if I achieve these outputs for this example, I have yet to test them on non-binary trees.  E.g., the all inorder and postorder traversal algorightms presently in this directory assume each node has two children or fewer. They would skip nodes with other branches.

# (To practice my vocab here: this tree is unbalanced, and not organized for binary search.  If it were a binary search tree, it would be balanced and it'd be organized so that an inorder traversal would output the values in numerical order.)

# construction of the diagrammed tree above using the Tree class from the file '../tree.rb'
require '../tree'
four = Node.new('4',Node.new('7'))
six = Node.new('6',Node.new('8'),Node.new('9'))
two = Node.new('2',four,Node.new('5'))
three = Node.new('3',six)
@root = Node.new('1',two,three)
# p root