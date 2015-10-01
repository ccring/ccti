# pseudo-test for LinkedList#remove

require_relative "linked_list"

n5 = Node.new("eee")
n4 = Node.new("ddd", n5)
n3 = Node.new("ccc", n4)
n2 = Node.new("bbb", n3)
n1 = Node.new("aaa", n2)
l = LinkedList.new(n1)
p l.remove_node(3)
p l