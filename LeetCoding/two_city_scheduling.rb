# @param {Integer[][]} costs
# @return {Integer}
def two_city_sched_cost(costs)
    sorted = costs.sort_by { |a| a[1] - a[0] }
    half = sorted.length / 2
    acc = 0
    sorted.each_with_index do |x, i|
        val = i < half ? x[1] : x[0]
        acc += val
    end
    
    acc
end

# Runtime: 36 ms
# Memory Usage: 9.3 MB
# https://leetcode.com/problems/two-city-scheduling/
