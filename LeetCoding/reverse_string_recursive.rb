# @param {Character[]} s
# @return {Void} Do not return anything, modify s in-place instead.
def reverse_string(s)
    recursion(0, s.length - 1, s)
end

def recursion(left, right, arr)
    if left < right
        arr[left], arr[right] = arr[right], arr[left]
        recursion(left + 1, right - 1, arr)
    end
end