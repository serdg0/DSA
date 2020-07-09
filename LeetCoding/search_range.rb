# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
    l, r = 0, nums.length - 1
    res = [-1, -1]
    
    while l <= r do
        mid = (l + r) / 2
        
        if nums[mid] === target
            if nums[mid - 1] != target
                l = mid
            elsif nums[mid + 1] != target
                r = mid
            end
            
            if nums[mid] === l and l === r
                return [l, r]
            end
        elsif nums[mid] < target
            l = mid + 1
        else
            r = mid - 1
        end
        
    end
    
    res
end