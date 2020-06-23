# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def countNodes(self, root: TreeNode) -> int:
        if root == None:
            return 0
        
        q = [root]
        visiteds = []
        
        while len(q) > 0:
            #BFS
            current = q.pop()
            if current.val in visiteds:
                continue
            else:
                visiteds.append(current)
                current.left != None and q.insert(0, current.left)
                current.right != None and q.insert(0, current.right)
                
        return len(visiteds)

# Time is O(N) which is terrible. 
# Will work on the logarithmic one later, since this is my first Python challenge!
# https://leetcode.com/problems/count-complete-tree-nodes/