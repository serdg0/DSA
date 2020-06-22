# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    left, right = 1, x
    
    while left <= right
        pivot = (left + right) / 2
        pow = pivot**2
        
        return pivot if pow === x
        
        if pow > x
            right = pivot - 1
        else
            left = pivot + 1
        end
    end
    
    left - 1
end