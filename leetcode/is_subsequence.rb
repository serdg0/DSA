def is_subsequence(s, t)
    return true if s === t
    ps, ls, pt, lt, res = [0, s.length, 0, t.length, false]
    
    while pt < lt
        
        if s[ps] === t[pt]
            ps += 1
        end
        if ps >= ls
            res = true
            break
        end
        pt += 1
    end
    
    res
end

# Runtime: 36 ms. Your runtime beats 88.89 % of ruby submissions.
# Memory Usage: 9.3 MB