using Printf

function kmp_preprocess(string::String)
    
end

function kmp_search(string::String, pattern::String)
    occurences::Vector{Int} = []

    return occurences
end

input_string = readline()
input_substring = readline()

substring_occurences = kmp_search(input_string, input_substring)

println(join(substring_occurences, " "))

