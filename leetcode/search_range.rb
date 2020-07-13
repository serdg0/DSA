# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def search_range(nums, target)
    return [-1, -1] if nums.length === 0
    
    l = bin_search(nums, target, -1)
    r = bin_search(nums, target, 1)
    
    [l, r]
end

def bin_search(nums, target, cond)
    return 0 if nums.length === 1 && nums[0] === target
    
    l, r = 0, nums.length - 1
    
    
    while l <= r do
        mid = (l + r) / 2
        
        if (nums[mid] === target) && (nums[mid + cond] != target)
            return mid
        elsif nums[mid] < target
            l = mid + 1
        else
            r = mid - 1
        end
    end
    -1
end