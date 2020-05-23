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
    break if node.val.nil?
    visiteds.push(node.val) #mark as visited
    neighs = node_array(node) #check their neighbors
    clone[node.val - 1] = neighs #add to clone
    to_visit = node.neighbors.select { |x| !visiteds.include?(x.val)}
    node = to_visit[0]
    p node.val
  end
  clone
end

# THE ERROR IS THAT IN THE LAST ITERATION, WHEN THERE ARE NO MORE VISITEDS, node.val
# AS A CONDITION IS NIL. FIX THE BUG AND OPTIMIZE