# Definition for Node.
# class Node
#     attr_accessor :val, :next, :random
#     def initialize(val = 0)
#         @val = val
#		  @next = nil
#		  @random = nil
#     end
# end

# @param {Node} node
# @return {Node}
def copyRandomList(head)
  clone_nodes = {}
  
  while !head.next.nil? do
    
    
    val, nxt, rand = [head.val, head.next, head.random]
    # Node GENESIS
    new_node = clone_nodes[val].nil? ? Node.new(val) : clone_nodes[val]
    new_node.next = clone_nodes[nxt.val].nil? ? clone_nodes[nxt.val] = Node.new(nxt.val) : clone_nodes[nxt.val]
    
    new_node.random = rand.nil? ? nil : clone_nodes[rand].nil? ? clone_nodes[nxt.val] = Node.new(nxt.val) : clone_nodes[rand.val]
    
    head = nxt
  end
  p clone_nodes
  clone_nodes[head.val]
end

def is_visited_now(node)
end