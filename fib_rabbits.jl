using Printf

function fibb(n::Int, k::Int, dp::Dict{Int, Int})
    if haskey(dp, n)
	return dp[n]
    elseif n == 1 || n == 2
	return 1
    else
	val = fibb(n - 1, k, dp) + k * fibb(n - 2, k, dp)
	dp[n] = val
	return val
    end
end

function fibb(n::Int, k::Int)
    dp = Dict{Int, Int}()
    return fibb(n, k, dp)
end

if length(ARGS) == 2
    n = parse(Int, ARGS[1])
    k = parse(Int, ARGS[2])
else
    args = split(readline(), " ")
    n = parse(Int, args[1])
    k = parse(Int, args[2])
end

@printf "%d\n" fibb(n, k)

