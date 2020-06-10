def search_insert(nums, target)
    target if target === 0
    
    nums.each_with_index do |x, i|
      if x >= target
        return i
      end
    end
    
    nums.length
end
# Runtime: 32 ms
# Memory Usage: 9.5 MB
# https://leetcode.com/problems/search-insert-position/