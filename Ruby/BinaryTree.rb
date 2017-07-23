class BinaryTreeNode
  attr_accessor :left_child, :right_child, :data

  def initialize
    @left_child = nil
    @right_child = nil
    @data = nil
  end

end

class BinaryTree
  attr_accessor :node_count

  def initialize
    @node_count = 1
    @root = nil

  end

  def insert_node(data)
    node = BinaryTreeNode.new
    node.data = data

    if @root.nil?
      @root = node
      return
    end

    current_node = @root

    while !(current_node.nil?) do
      previous_node = current_node
      if data >= current_node.data
        current_node = current_node.right_child
      else 
        current_node = current_node.left_child
      end
    end

    current_node = node
    @node_count += 1

  end

  def search(data)
    current_node = @root
    
    while !(current_node.nil?) do
      return current_node if data == current_node.data

      if data >= current_node.data
        current_node = current_node.right_child
      else 
        current_node = current_node.left_child
      end
    end

    return nil
  end

end
start = Time.now

binary_tree = BinaryTree.new

times = 5000000
prng = Random.new

(0...times).each do
  rv = prng.rand(0...times)
  binary_tree.insert_node(rv)
end

binary_tree.insert_node(times + 1)
binary_tree.search(times + 1)

finish = Time.now

p(binary_tree.node_count)
p((finish - start) * 1000) # ms