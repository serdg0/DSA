def bfs(graph)
  
  queue_to_visit = [0]
  visited = []

  while !queue_to_visit.empty?
    top = queue_to_visit.last
    
    if visited.include?(top)
      queue_to_visit.pop
      next
    end
    
    visited.push(top)
    unvisited = graph[top].select {|x| !visited.include?(x) }

    unvisited.each do |x|
      queue_to_visit.unshift(x)
    end
    queue_to_visit.pop
  end
  
visited
end

#BFS IS GOOD TO FIND SHORTEST PATH
