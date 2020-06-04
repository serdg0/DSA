def cloneGraph(node)
  stack = [node]
  visiteds = []
  clone = {}
  
  while !stack.empty? do
      current_node = stack.pop
      visiteds.push(current_node)
      
      if clone[current_node.val].nil?
          clone[current_node.val] = Node.new(current_node.val, [])
      end
      
      # Step 3: check the neighbors
      current_node.neighbors.each do |nodebor|
          clone[nodebor.val].nil?
      end
      
      unvisiteds = current_node.neighbors.select { |node| !visiteds.include?(node) }
      stack += unvisiteds
  end
  
  clone[node.val]
end
# UNFINISHED
# https://leetcode.com/problems/clone-graph/