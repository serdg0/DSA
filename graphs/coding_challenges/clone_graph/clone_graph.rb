def node_array(node)
    sub = []
  
    node.neighbors.each do |n|
      sub.push(n.val)
    end
    
    sub
  end
  
  def cloneGraph(node)
    clone = []
    visiteds = []
    
    while !visiteds.include?(node.val) do
      visiteds.push(node.val) #mark as visited
      neighs = node_array(node) #check their neighbors
      clone[node.val - 1] = neighs #add to clone
       #keep traversing
      node = 
    end
    clone
end