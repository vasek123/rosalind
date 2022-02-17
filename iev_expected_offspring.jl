using Printf

function offsprings(a::String, b::String)
    return [a[1]*b[1], a[1]*b[2], a[2]*b[1], a[2]*b[2]]
end

function prob_dominant_offspring(parent_a::String, parent_b::String)
    possible_offsprings = offsprings(parent_a, parent_b)
    dominant_offsprings_n = sum(map(x -> contains(x, "A"), possible_offsprings))
    return dominant_offsprings_n / 4
end

if length(ARGS) == 6
    counts = map(x -> parse(Int, x), ARGS)
else
    counts = map(x -> parse(Int, x), split(readline(), " "))
end

result = counts[1] 
result += prob_dominant_offspring("AA", "Aa") * counts[2]
result += prob_dominant_offspring("AA", "aa") * counts[3]
result += prob_dominant_offspring("Aa", "Aa") * counts[4]
result += prob_dominant_offspring("Aa", "aa") * counts[5]
result += prob_dominant_offspring("aa", "aa") * counts[6]

result *= 2

@printf "%f\n" result

