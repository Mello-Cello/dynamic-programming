
# Time Complexity: O(n) where n is the length of the array
# Space Complexity: O(1)

def max_sub_array(nums)
    return nil if nums == []
    
    max_so_far = nums[0]
    max_ending_here = nums[0]

    nums[1..-1].each do |num|
        
        max_ending_here = max_ending_here + num
        
        if max_ending_here < 0
            max_so_far = max_ending_here = [max_so_far, num].max
        elsif max_so_far < max_ending_here
            max_so_far = max_ending_here
        else max_so_far < 0 && num >=0
            max_so_far = num
        end
    end
    
    return max_so_far
end
