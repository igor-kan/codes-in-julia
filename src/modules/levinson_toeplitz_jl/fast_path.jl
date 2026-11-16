function build_dense_toeplitz(r::AbstractVector{T}) where {T<:AbstractFloat}
    n = length(r)
    mat = Matrix{T}(undef, n, n)
    for j in 1:n, i in 1:n
        mat[i, j] = r[abs(i - j) + 1]
    end
    return mat
end
