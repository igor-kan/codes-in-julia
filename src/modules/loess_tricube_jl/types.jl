struct LoessConfig{T<:AbstractFloat}
    span::T
    ridge_eps::T
end

LoessConfig(; span::Float64 = 0.5, ridge_eps::Float64 = 1e-10) = LoessConfig{Float64}(span, ridge_eps)

struct LoessPrediction{T<:AbstractFloat}
    query_points::Matrix{T}
    fitted::Vector{T}
end
