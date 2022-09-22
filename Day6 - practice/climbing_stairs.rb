#Leet Code: #70 climbing stairs 

#You are climbing a staircase. It takes n steps to reach the top.
#Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

#example 1:
#Input: n = 2
#Output: 2
#Explanation: There are two ways to climb to the top.
#1. 1 step + 1 step
#2. 2 steps

#example 2: 
#Input: n = 3
#Output: 3
#Explanation: There are three ways to climb to the top.
#1. 1 step + 1 step + 1 step
#2. 1 step + 2 steps
#3. 2 steps + 1 step



#steps:
#1. find max number of double steps = n/2 
#2. loop (i < n)
#     subtract a two_step
#     add two one_step 
#     print result
#     i++
# end
#3. rearrange the order of it??

# loop(i < arr.length)
    # 



# phil's method:
def climbing_stairs(n)
    #first: loop n times
        # inside the loop add1, add2... 
    
    # =begin
    #  n = 1 => 1 combination
    #  1
    #  n = 2 => 2 combinations
    #  11 
    #  2 
    #  n = 3 => 3 combinations
    #  111 
    #  21 
    #  12
    #  n = 4 => 5 combinations 
    #  1111 
    #  211
    #  121
    #  112 
    #  22 
    #  n = 5 => 8 combinations
    #  11111 
    #  2111
    #  1211
    #  1121
    #  221 
    #  122


        #condensed down:
        # n = 1 => 1
        # n = 2 => 2
        # n = 3 => 3
        # n = 4 => 5
        # n = 5 => 8

        # n = n => climbing_stairs(n - 1) + climbing_stairs(n - 2)
        #add 1 to the end of all the previous combinations
        #add 2 to the end of the n - 2 combinations 
    # =end

    out = [1,2]

    if n < 3
        return out[n - 1]
    end

    i = 2 
    while i < n 
        out.push(out[i - 1] + out[i - 2])
        p out 
        i += 1 
    end 
    return out[n - 1]
end

puts ("TESTING....")
puts climbing_stairs(2)
puts climbing_stairs(5)
puts climbing_stairs(42)