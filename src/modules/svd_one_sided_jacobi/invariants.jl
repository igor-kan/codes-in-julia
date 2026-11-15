function verify_svd_invariants(A::Matrix{T}, res::JacobiSvd{T}) where {T<:AbstractFloat}
    @assert issorted(res.S; rev = true)
    @assert all(>=(zero(T)), res.S)
    @assert norm(A - reconstruct_svd(res)) < T(1e-10) * max(one(T), norm(A))
    @assert norm(transpose(res.V) * res.V - I) < T(1e-10)
    return true
end
