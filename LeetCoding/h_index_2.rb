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