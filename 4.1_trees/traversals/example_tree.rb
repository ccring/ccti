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

# construction of the tree above using the Tree class from the file '../tree.rb'
require '../tree'
four = Node.new('4',Node.new('7'))
six = Node.new('6',Node.new('8'),Node.new('9'))
two = Node.new('2',four,Node.new('5'))
three = Node.new('3',six)
@root = Node.new('1',two,three)
# p root