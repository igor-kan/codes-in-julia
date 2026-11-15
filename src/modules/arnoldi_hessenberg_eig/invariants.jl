function verify_arnoldi_identity(A::Matrix{T}, fact::ArnoldiFactorization{T}) where {T<:AbstractFloat}
    m = size(fact.H_ext, 2)
    Qk = fact.Q[:, 1:m]
    ortho_err = norm(transpose(fact.Q) * fact.Q - I)
    @assert ortho_err < T(1e-10)
    if !fact.happy_breakdown
        rel_err = norm(A * Qk - fact.Q * fact.H_ext)
        @assert rel_err < T(1e-10)
    end
    return true
end
