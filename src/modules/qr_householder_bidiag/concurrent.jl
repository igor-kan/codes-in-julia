function batch_bidiag_singular_trace(mats::Vector{Matrix{T}}) where {T<:AbstractFloat}
    results = Vector{T}(undef, length(mats))
    solver = HouseholderBidiag(false)
    Threads.@threads for idx in eachindex(mats)
        fac = bidiagonalize(solver, mats[idx])
        results[idx] = sum(abs2, fac.diag) + sum(abs2, fac.superdiag)
    end
    return results
end
