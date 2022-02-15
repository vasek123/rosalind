using Printf

function hamm_distance(a::String, b::String)
    dist = 0
    for i in 1:length(a)
	if a[i] != b[i]
	    dist += 1
	end
    end

    return dist
end


first_input = readline()
second_input = readline()
distance = hamm_distance(first_input, second_input)

@printf "%d\n" distance


