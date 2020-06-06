# @param {Integer[][]} people
# @return {Integer[][]}
def reconstruct_queue(people)
    people.sort! { |a, b| a[0] === b[0] ? a[1] - b[1] : b[0] - a[0] }
    queue = []
    i = 0
    
    while i < people.length do
      k = people[i][1]
      queue.insert(k, people[i])
      i += 1
    end
    
    queue
end

# Runtime: 68 ms, faster than 88.89% of Ruby online submissions
# Memory Usage: 9.5 MB, less than 40.00% of Ruby online submissions
# https://leetcode.com/problems/queue-reconstruction-by-height/