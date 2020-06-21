# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return x if x < 2
    
    left, right = 1, x
    
    while left <= right
        piv = (left + right) / 2
        pow2 = piv**2
        
        return piv if pow2 === x
        
        if pow2 > x
            right = piv - 1
        else
            left = piv + 1
        end
        
        
    end
end