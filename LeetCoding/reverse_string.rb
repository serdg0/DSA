# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    low = 0
    high = s.length - 1
    
    while low < high
        s[low], s[high] = s[high], s[low]
        low += 1
        high -= 1
    end
end

# Runtime: 220 ms
# Memory Usage: 20.9 MB
# https://leetcode.com/problems/reverse-string/