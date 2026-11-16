function reconstruct_bidiag(f::BidiagFactor{T}) where {T<:AbstractFloat}
    m = size(f.U, 1)
    n = size(f.V, 1)
    Bfull = zeros(T, m, n)
    for i in 1:n
        Bfull[i, i] = f.diag[i]
        if i < n
            Bfull[i, i + 1] = f.superdiag[i]
        end
    end
    return f.U * Bfull * f.V'
end
