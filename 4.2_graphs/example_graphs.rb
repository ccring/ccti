require "./graph"

# example 1

# A-->B
# |   |
# v   v
# C-->D

a = Node.new("A")
b = Node.new("B")
c = Node.new("C")
d = Node.new("D")

a.add_edge(b)
a.add_edge(c)
b.add_edge(d)
c.add_edge(d)
# p a

graph = Graph.new(a.name => a, b.name => b, c.name => c, d.name => d)
# puts graph.display

# now let's add a bit and make it like this

# A-->B   H<--G
# |   |		| 	^
# v   v		v	  |
# C-->D-->E-->F

("E".."H").each do |letter|
	graph.add_node(Node.new(letter))
end

graph.add_edge("D","E")
graph.add_edge("E","F")
graph.add_edge("F","G")
graph.add_edge("G","H")
graph.add_edge("H","E")
puts graph.display