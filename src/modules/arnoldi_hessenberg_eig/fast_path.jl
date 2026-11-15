function ritz_eigenvalues(fact::ArnoldiFactorization{T}) where {T<:AbstractFloat}
    m = size(fact.H_ext, 2)
    Hm = fact.H_ext[1:m, 1:m]
    return eigvals(Hm)
end
