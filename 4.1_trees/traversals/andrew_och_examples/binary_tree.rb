# http://www.och.cc/blog/index.php?entry=entry070511-152543

require_relative 'node'
 
class BinaryTree
  attr_reader :root
  attr_writer :root
  
  def initialize()
    @root = Node.new
  end
  
  def preOrder(node)
    p node.value
    if node.left != nil
      preOrder(node.left)
    end
    if node.right != nil
      preOrder(node.right)
    end
  end
  
  def inOrder(node)
    if node.left != nil
      inOrder(node.left)
    end
    p node.value
    if node.right != nil
      inOrder(node.right)
    end
  end
 
  def postOrder(node)
    if node.left != nil
      postOrder(node.left)
    end
    if node.right != nil
      postOrder(node.right)
    end
    p node.value
  end
 
  def traverseTypes
    print "Pre-Order Traversal of tree\n"
    preOrder(@root)
    
    print "In-Order Traversal of tree\n"
    inOrder(@root)
    
    print "Post-Order Traversal of tree\n"
    postOrder(@root)
  end
end