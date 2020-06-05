# Definition for a Node.
# class Node
#     attr_accessor :val, :neighbors
#     def initialize(val = 0, neighbors = nil)
#		  @val = val
#		  neighbors = [] if neighbors.nil?
#         @neighbors = neighbors
#     end
# end

# @param {Node} node
# @return {Node}
def cloneGraph(node)
    return if node.nil?
    stack = [node]
    visiteds = []
    clone = {}
    
    while !stack.empty? do
        original_node = stack.pop
        visiteds.include?(original_node) ? next : visiteds.push(original_node)
        
        # Step 2: Create node
        if clone[original_node.val].nil?
            clone[original_node.val] = Node.new(original_node.val, [])
        end
        
        # Step 3: check the neighbors
        original_node.neighbors.each do |nodebor|
            if clone[nodebor.val].nil?
                clone[nodebor.val] = Node.new(nodebor.val, [])
            end
            
            clone[original_node.val].neighbors.push(clone[nodebor.val])
        end
  
        # Step 4: Push unvisiteds to stack
        unvisiteds = original_node.neighbors.select { |node| !visiteds.include?(node) }
        stack += unvisiteds
    end
    
    clone[node.val]
  end
  
# Runtime: 36 ms, faster than 93.81% of Ruby online submissions for Clone Graph.
# Memory Usage: 9.8 MB, less than 5.31% of Ruby online submissions for Clone Graph.
# https://leetcode.com/problems/clone-graph/