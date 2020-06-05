def depth_first_search(graph)
    stack = [0]
    visiteds = []
    
    while !stack.empty? do
      head = stack.last
      
      visiteds.push(head) if !visiteds.include?(head)
      
      unvisiteds = graph[head].select { |x| !visiteds.include?(x) }
      
      if unvisiteds.empty?
        stack.pop
        next
      end
      
      stack.push(unvisiteds.first)
    end
    
    visiteds
end

#   Good to know if a path exist. It's time is linear O(n)