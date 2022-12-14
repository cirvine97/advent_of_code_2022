# Part 1
# Read in input
f = open("input.txt", "r")
s = read(f, String)      
close(f)
contents = split(s, "\n")

# Remove the blank end element
pop!(contents)

# Scores 
alpha_lower = 'a':'z'
alpha_upper = 'A':'Z'
alphabet = vcat(alpha_lower, alpha_upper)
scores = 1:52
mapping = Dict(zip(alphabet, scores))

sum = 0
for ii in 1:length(contents)
    bag_len = length(contents[ii])
    comp1 = contents[ii][1:Int(bag_len/2)]
    comp2 = contents[ii][Int(bag_len/2)+1:end]

    # Split strings into array of characters
    comp1 = split(comp1, "")
    comp2 = split(comp2, "")

    comp1 = Set(comp1)
    comp2 = Set(comp2)
    # Find shared elements
    shared = intersect(comp1, comp2)

    # Need to convert to character instead of string
    sum += mapping[only(first(shared))]
end

println(sum)