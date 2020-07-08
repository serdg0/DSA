class Solution(object):
    def findMin(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        l, r = 0, len(nums) - 1
        
        if nums[l] <= nums[r]:
            return nums[l]
        
        while l <= r:
            mid = (l + r) // 2
            
            if nums[mid] > nums[mid + 1]:
                return nums[mid + 1]
            else:
                if nums[l] > nums[mid]:
                    r = mid - 1
                else:
                    l = mid + 1
    
# https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
# Runtime: 32 ms
# Memory Usage: 12.9 MB