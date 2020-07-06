def first_bad_version(n)
    return 1 if is_bad_version(1)
    
    left, right = 1, n
    
    while left <= right do
        piv = (left + right) / 2
        current = is_bad_version(piv)
        next_one = is_bad_version(piv + 1)

        if !current && next_one
            return piv + 1
        elsif !current && !next_one
            left = piv + 1
        else
            right = piv - 1
        end
    end
    
end

# https://leetcode.com/problems/first-bad-version/
# Runtime: 44 ms
# Memory Usage: 9.1 MB