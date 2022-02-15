function complement_dna(dna::String)
    return replace(reverse(dna), 'A' => 'T', 'T' => 'A', 'C' => 'G', 'G' => 'C')
end

input_dna = readline()
dna_c = complement_dna(input_dna)

display(dna_c)
