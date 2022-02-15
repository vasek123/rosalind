using Printf

const NUCL_MAP = Dict('A' => 1, 'C' => 2, 'G' => 3, 'T' => 4)

function count_nucleotides(dna::String)
    counts::AbstractVector{Int} = [0, 0, 0, 0]
    for i in 1:length(dna)
	counts[NUCL_MAP[dna[i]]] += 1
    end
    return counts
end


input_dna = readline()
counts = count_nucleotides(input_dna)
@printf "%d %d %d %d\n" counts[1] counts[2] counts[3] counts[4]

