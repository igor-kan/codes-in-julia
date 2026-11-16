function verify_bidiag_factor(A::AbstractMatrix{T}, f::BidiagFactor{T}; tol::T = T(1e-10)) where {T<:AbstractFloat}
    err_rec = opnorm(A - reconstruct_bidiag(f))
    err_u = opnorm(f.U' * f.U - I)
    err_v = opnorm(f.V' * f.V - I)
    if err_rec > tol || err_u > tol || err_v > tol
        throw(BidiagDomainError("factorization orthogonality or reconstruction check failed"))
    end
    return true
end
