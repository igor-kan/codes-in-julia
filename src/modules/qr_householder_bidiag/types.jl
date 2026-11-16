struct BidiagConfig{T<:AbstractFloat}
    tol::T
    accumulate_orth::Bool
end

BidiagConfig(; tol::Float64 = 1e-13, accumulate_orth::Bool = true) =
    BidiagConfig{Float64}(tol, accumulate_orth)

struct BidiagFactor{T<:AbstractFloat}
    U::Matrix{T}
    B::Matrix{T}
    V::Matrix{T}
    diag::Vector{T}
    superdiag::Vector{T}
end
