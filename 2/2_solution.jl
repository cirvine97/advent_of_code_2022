# Part 1
# opening a file in read_mode
f = open("input.txt", "r")
 
# read entire file into a string
s = read(f, String)      
close(f)

# Split and save as strategy 
strategy = split(s, "\n")

# Remove the blank end element
pop!(strategy)

# Hardcode all 9 possible outcomes - faster
outcomes = Dict(
    [
        ("A X", (3 + 1)),
        ("B X", (0 + 1)),
        ("C X", (6 + 1)),
        ("A Y", (6 + 2)),
        ("B Y", (3 + 2)),
        ("C Y", (0 + 2)),
        ("A Z", (0 + 3)),
        ("B Z", (6 + 3)),
        ("C Z", (3 + 3))
    ]
)

# Iterate through the list
score = 0
for ii in 1:length(strategy)
    score += outcomes[strategy[ii]]
end

println("Solution to part 1: ", score)


# Part 2
new_outcomes = Dict(
    [
        ("A X", (0 + 3)),
        ("B X", (0 + 1)),
        ("C X", (0 + 2)),
        ("A Y", (3 + 1)),
        ("B Y", (3 + 2)),
        ("C Y", (3 + 3)),
        ("A Z", (6 + 2)),
        ("B Z", (6 + 3)),
        ("C Z", (6 + 1))
    ]
)

# Iterate through the list
score = 0
for ii in 1:length(strategy)
    score += new_outcomes[strategy[ii]]
end

println("Solution to part 2:", score)