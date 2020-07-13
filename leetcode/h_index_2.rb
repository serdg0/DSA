# @param {Integer[]} citations
# @return {Integer}
def h_index(citations)
    return 0 if citations.empty?
    c = 0
    c_c = 0
    
    citations.reverse_each do |x|
        c_c += 1
        if x >= c_c
            c = c_c
            next
        else
            break
        end
    end
    
    c
end

# Runtime: 36 ms, faster than 100.00% of Ruby online submissions for H-Index II.
# Memory Usage: 10.8 MB, less than 16.67% of Ruby online submissions for H-Index II.
# https://leetcode.com/problems/h-index-ii/