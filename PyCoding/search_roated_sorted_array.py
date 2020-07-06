class Solution(object):
    def search(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        if len(nums) is 0:
            return -1
      
        def get_pivot(arr):
            if len(arr) is 1:
                return 0
        
            for i in range(len(arr) - 1):
                if arr[i] > arr[i+1]:
                    return i
            return -1
      
        def binary_search(left, right, arr, target):
            while left <= right:
                pivot = (left + right) // 2
                
                if arr[pivot] == target:
                    return pivot
        
                if target < arr[pivot]:
                    right = pivot - 1
                else:
                    left = pivot + 1
            return -1
    
        pivot = get_pivot(nums)
        left, right = 0, len(nums) - 1
      
        if pivot is -1:
            return binary_search(left, right, nums, target)
      
        if nums[pivot] == target:
            return pivot
        
        
        if target < nums[0]:
            return binary_search(pivot + 1, right, nums, target)
        else:
            return binary_search(left, pivot - 1 , nums, target)