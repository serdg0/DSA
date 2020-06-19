# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
    left, right = 0, nums.length - 1
    
    while left <= right do
      pivot = (left + right) / 2
      
      return pivot if nums[pivot] === target
      
      if target < nums[pivot]
        right = pivot - 1
      else
        left = pivot + 1
      end
    end
    -1
end