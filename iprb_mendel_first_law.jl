using Printf

# Homozygous ~ having two identical alleles
# Heterozygous ~ having two different alleles

# Decide where the input is coming from
# Input = integers k, m, n
#                  homo dominant, hetero, homo recessive        
if length(ARGS) == 3
    counts = map(x -> parse(Int, x), ARGS)
else
    counts = map(x -> parse(Int, x), split(readline(), " "))
end

total_n = sum(counts)
probs = counts ./ total_n

pairs_n = div(total_n * (total_n - 1), 2)
possible_children_n = pairs_n * 4

children_wo_dominant_n = 0
children_wo_dominant_n += div(counts[2] * (counts[2] - 1), 2)
children_wo_dominant_n += counts[2] * counts[3] * 2
children_wo_dominant_n += div(counts[3] * (counts[3] - 1), 2) * 4

dominant_prob = 1 - children_wo_dominant_n / possible_children_n

@printf "%f\n" dominant_prob

