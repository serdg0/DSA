def sort_colors(nums)
    low, mid, high = 0, 0, nums.length - 1
    
    while mid <= high
      if nums[mid] === 0
        nums[mid], nums[low] = nums[low], nums[mid]
        low += 1
        mid += 1
      elsif nums[mid] === 1
        mid += 1
      else
        nums[mid], nums[high] = nums[high], nums[mid]
        high -= 1
      end
    end
    
    nums
end

# Runtime: 44 ms, faster than 20.73% of Ruby online submissions for Sort Colors.
# Memory Usage: 9.3 MB, less than 47.50% of Ruby online submissions for Sort Colors.
# https://leetcode.com/problems/sort-colors