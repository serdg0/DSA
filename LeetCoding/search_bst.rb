def search_bst(root, val)
    return root if root.nil? || root.val === val
  
    if val >= root.val
        search_bst(root.right, val)
    else
        search_bst(root.left, val)
    end
    
end

# Runtime: 56 ms, faster than 60.23% of Ruby online submissions for Search in a Binary Search Tree.
# Memory Usage: 10.3 MB, less than 37.84% of Ruby online submissions for Search in a Binary Search Tree.
# https://leetcode.com/problems/search-in-a-binary-search-tree/