def max_area(height)
    low_i = 0
    high_i = height.size - 1
    max_area = 0
    
    while low_i < high_i do
      curr_area = (high_i - low_i) * [height[low_i], height[high_i]].min
      
      if curr_area > max_area
        max_area = curr_area
      end
      
      if height[low_i] < height[high_i]
        low_i += 1
      else
        high_i -= 1
      end
      
    end
    max_area
end