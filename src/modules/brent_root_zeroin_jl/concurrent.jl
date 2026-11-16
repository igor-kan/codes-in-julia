function batch_solve_roots(fs::Vector, brackets::Vector{Tuple{T, T}}) where {T<:AbstractFloat}
    out = Vector{RootOutcome{T}}(undef, length(fs))
    Threads.@threads for i in eachindex(fs)
        out[i] = find_root(BrentSolver(), fs[i], brackets[i][1], brackets[i][2])
    end
    return out
end
