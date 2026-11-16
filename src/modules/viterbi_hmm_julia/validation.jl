function validate_hmm(m::HmmSpec{T}, obs::Vector{Int}) where {T<:AbstractFloat}
    S = length(m.init_probs)
    if S == 0 || isempty(obs)
        throw(HmmDimensionError("empty states or observation sequence"))
    end
    if size(m.trans_mat) != (S, S) || size(m.emit_mat, 1) != S
        throw(HmmDimensionError("transition or emission matrix shape mismatch"))
    end
    if abs(sum(m.init_probs) - one(T)) > T(1e-6)
        throw(HmmDomainError("initial distribution must sum to 1"))
    end
    V = size(m.emit_mat, 2)
    if any(o -> o < 1 || o > V, obs)
        throw(HmmDomainError("observation symbol out of emission alphabet"))
    end
    return true
end
