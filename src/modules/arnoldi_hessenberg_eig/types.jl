struct ArnoldiFactorization{T<:AbstractFloat}
    Q::Matrix{T}
    H_ext::Matrix{T}
    happy_breakdown::Bool
end
