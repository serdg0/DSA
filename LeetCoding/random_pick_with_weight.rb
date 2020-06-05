class Solution

=begin
        :type w: Integer[]
=end
        def initialize(w)
          sum = 0
          i = 0
          @weights = []
          
          while i < w.length do
            sum += w[i]
            @weights.push(sum)
            i += 1
          end
        end
    
    
=begin
        :rtype: Integer
=end
        def pick_index()
          random = @weights[@weights.length - 1] * rand()
          index = -1
          low = 0
          high = @weights.length - 1
        
          while low <= high do
            med = (low + high) / 2
            
            if random < @weights[med]
              index = med
              high = med - 1
            else
              low = med + 1
            end
            
          end
          index
        end

    end

    # Runtime: 132 ms
    # Memory Usage: 12.6 MB
    # https://leetcode.com/problems/random-pick-with-weight/