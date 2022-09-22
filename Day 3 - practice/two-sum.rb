require 'pry'
#Phil's solution
def two_sum(nums, target)
    #How to do this as O(n^2):
    
    #brute force => O(n^2) 
    #check all pars for the target 
    #ex: 
    # 2+7, 2+11, 2+15, 7+11, ...
    #find target 
    output = []
    i = 0

    while i < nums.length
        j = i + 1 
        while j < nums.length 
            sum = nums[i] + nums[j]
            p "#{i}, #{j}, #{sum}"
            if target == sum 
                output = [i, j]
            end 
            j += 1 
        end 
        I += 1 
    end 
    output 
end




def two_sum(nums, target)
    #How to do this in O(n):
    
    #sudo code: 
    #1.we are creating a tracker to find the difference between the nums[i] and the target 
    #2. we loop through the array
    #3. check if we've seen the diff to equal the num of our current value
    
    #start with an empty hash/object (note: this is for us to check the data type)
    hash = {}

    nums.each_with_index do |num, idx|
        #what value of num + ? would equal target
        #example: x = 22 - 2
         
        diff = target - num 


        if !!hash[diff]
            return [hash[num], idx]
        end

        hash[diff] = idx 
        p hash
        # hash = {value_we_are_looking_for: index}
        binding.pry
    end
end

puts "TESTING..."

nums1 = [2, 7, 11, 15]
nums2 = [3, 2, 4]

p two_sum(nums1, 22)

#describe problem: We need to map through an array to search for 
# values thst add to the target number. Then we will return the 
# two indices of the numbers that add up to the target number.

#steps for writting code: 
#step 1: iterate through the array 
#step 2: add num[x] + num[y]
#step 3: check to see if num[x] + num[y] = target num 
#step 4: if yes, return x and y, if no, continue 
#step 5: return indices of numbers 

# nums = [2,7,11,15]
# target = 9 

# result = 0
# counter = 0 
# while counter <= nums.length()
#     nums[counter]+nums[counter+1]
#     if(result == target)
#         {return}
#     else
#         {counter += 1}
