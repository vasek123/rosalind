using Printf

function compute_gc_content(dna::String)
    gc_count = sum(replace(collect(dna), 'A' => 0, 'T' => 0, 'G' => 1, 'C' => 1))
    return gc_count / length(dna)
end

function get_dna(lines, beggining_idx)
    name = lines[beggining_idx][2:end]
    dna = ""

    idx = beggining_idx + 1
    while idx < length(lines) && lines[idx][1] != '>'
	dna *= lines[idx]
	idx += 1
    end

    return name, dna, idx
end

filename = ARGS[1]

lines = readlines(filename)

max_content_name = ""
max_content_amount = 0

current_idx = 1
while current_idx < length(lines)
    global max_content_name, max_content_amount, current_idx

    name, dna, current_idx = get_dna(lines, current_idx)
    gc_content = compute_gc_content(dna)

    if gc_content > max_content_amount
	max_content_name = name
	max_content_amount = gc_content
    end
end

@printf "%s\n%f\n" max_content_name 100 * max_content_amount

