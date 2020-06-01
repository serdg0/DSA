def cloneGraph(node)
  clone = []
  visiteds = []
  
  while !node.nil? do
    visiteds.push(node.val) #mark as visited
    neighs = node.neighbors.map { |n| n.val } #check their neighbors
    clone[node.val - 1] = neighs #add to clone
    to_visit = node.neighbors.select { |x| !visiteds.include?(x.val) }
    node = to_visit[0]
  end
  p clone
  clone
end
# UNFINISHED
# https://leetcode.com/problems/clone-graph/