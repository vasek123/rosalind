using Printf

function dna_to_rna(dna::String)
    return replace(dna, 'T' => 'U')
end

input_dna = readline()
rna = dna_to_rna(input_dna)

display(rna)
