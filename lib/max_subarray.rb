
# Time Complexity: O(n) where n is the length of the array
# Space Complexity: O(1)

def max_sub_array(nums)
    return nil if nums == []
    
    highest_positive_streak = nums[0]
    negative_streak = 0
    new_positive_streak = nums[0]

    max_total = nil

    nums[1..-1].each do |num|
        highest_positive_streak += num if num > 0
        new_positive_streak += num if num > 0
        negative_streak += num if num < 0


        current_tally = highest_positive_streak + negative_streak + new_positive_streak 
            if current_tally > highest_positive_streak  
                max_total = current_tally
            elsif num 
                current_tally
            end


        
        # max_ending_here = max_ending_here + num
        
        # if max_ending_here < 0
        #     max_so_far = [max_so_far, num].max

        #     # this BREAKS the test I wrote
        #     max_ending_here = [max_so_far, num].max 

        #     # this BREAKS test_0001_will work for [-2,1,-3,4,-1,2,1,-5,4] 
        #     # max_ending_here = max_ending_here

        # elsif max_so_far < max_ending_here
        #     max_so_far = max_ending_here
        # else max_so_far < 0 && num >=0
        #     max_so_far = num
        # end
    end
    
    return max_total
end
