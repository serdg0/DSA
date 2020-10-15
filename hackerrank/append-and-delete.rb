def appendAndDelete(s, t, k)
    pivot = binary_search(s, t)
    p pivot
    to_chop = s.length - 1 - pivot
    to_append = t.length - 1 - pivot
    min_moves = to_append + to_chop
    moves_left = k - min_moves
    s_remaining = moves_left - s[0, pivot].length
    is_possible = s_remaining >= 0 || moves_left == 0
    p [s_remaining]

    is_possible ? 'Yes' : 'No'
end

def binary_search(s, t)
    return s.length - 1 if s == t

    left = 0
    right = s.length - 1

    while left <= right do
        mid = (left + right) / 2
        t_whole_left = t[0, mid]
        s_whole_left = s[0, mid]
        t_one_right = t[mid + 1]
        s_one_right = s[mid + 1]

        if (t_whole_left == s_whole_left && t_one_right != s_one_right) || mid == 0
            return mid
        elsif t_whole_left == s_whole_left && t_one_right == s_one_right
            left = mid
        else
            right = mid - 1
        end
    end
end