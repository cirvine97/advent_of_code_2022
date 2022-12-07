# Read in the file
ret = open("input.txt","r") do datafile
    [parse.(Int64, split(line)) for line in eachline(datafile)]
end

# Part 1 
# Loop through the file
sum = 0
sums = []
for ii in 1:length(ret)
    if ret[ii] != []
        # This is just weirdness of it being 
        # a vector of vectors
        sum += ret[ii][1]
    else
        # Append sub sum
        append!(sums, sum)
        # Reset sum
        sum=0
    end
end

# Find the maximum 
println("Answer to part 1 is: ", maximum(sums))


# Part 2 
sums_copy = sums
max1 = maximum(sums_copy)
deleteat!(sums_copy, findall(x->x==max1, sums_copy))
max2 = maximum(sums_copy)
deleteat!(sums_copy, findall(x->x==max2, sums_copy))
max3 = maximum(sums_copy)

# Find combined 
combiend_max = max1 + max2 + max3

println("Answer to part 2 is: ", combiend_max)