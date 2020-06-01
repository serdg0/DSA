def num_islands(grid)
    i = 0
    rows = grid.length
    cols = rows > 0 ? grid[0].length : 0
    islands = 0
    
    while i < rows
      j = 0
      while j < cols
        p [i, j, cols]
        if grid[i][j] === "1"
          dfs(grid, i, j)
          islands += 1
        end
        j += 1
      end
      i += 1
    end
    islands
  end
  
  def dfs(grid, i, j)
    stack = []
    stack.push([i, j])
    
    while !stack.empty?
      i, j = stack.pop
      grid[i][j] = "0"
      
      stack.push([i + 1, j]) if valid_neighbors?(grid, i + 1, j)
      stack.push([i, j + 1]) if valid_neighbors?(grid, i, j + 1)
      stack.push([i - 1, j]) if valid_neighbors?(grid, i - 1, j)
      stack.push([i, j - 1]) if valid_neighbors?(grid, i, j - 1)
    end
    grid
  end
  
  def valid_neighbors?(grid, i, j)
    i < grid.length && i >= 0 && j < grid[0].length && j >= 0 && grid[i][j] === "1"
  end

  # https://leetcode.com/problems/number-of-islands/