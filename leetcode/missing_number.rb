def missing_number(nums)
    res = (0..nums.size).to_a - nums
    res.first
end

# Runtime: 48 ms, faster than 53.42% of Ruby online submissions for Missing Number.
# Memory Usage: 11.9 MB, less than 15.64% of Ruby online submissions for Missing Number.
# https://leetcode.com/problems/missing-number