using LinearAlgebra

@inline function tricube_kernel(u::T) where {T<:AbstractFloat}
    u >= one(T) && return zero(T)
    u <= zero(T) && return one(T)
    return (one(T) - u^3)^3
end

function _loess_eval_point(
    X::AbstractMatrix{T},
    y::AbstractVector{T},
    xq::AbstractVector{T},
    k_neighbors::Int,
    ridge_eps::T,
) where {T<:AbstractFloat}
    n, p = size(X)
    dists = [norm(@view(X[i, :]) .- xq) for i in 1:n]
    order = sortperm(dists)
    bw = dists[order[k_neighbors]]
    bw <= zero(T) && (bw = one(T))

    idx = order[1:k_neighbors]
    w = [tricube_kernel(dists[j] / bw) for j in idx]
    Z = hcat(ones(T, k_neighbors), X[idx, :] .- xq')
    Wsqrt = sqrt.(w)
    Zw = Z .* Wsqrt
    yw = y[idx] .* Wsqrt
    G = Zw' * Zw + ridge_eps * I
    beta = G \ (Zw' * yw)
    return beta[1]
end

function fit_predict_loess(
    ::TricubeLoess,
    X::AbstractMatrix{T},
    y::AbstractVector{T},
    Xquery::AbstractMatrix{T},
    cfg::LoessConfig{T} = LoessConfig(),
) where {T<:AbstractFloat}
    validate_loess(X, y, cfg)
    n = size(X, 1)
    k = clamp(ceil(Int, cfg.span * n), size(X, 2) + 2, n)
    preds = [_loess_eval_point(X, y, @view(Xquery[q, :]), k, cfg.ridge_eps) for q in 1:size(Xquery, 1)]
    return LoessPrediction{T}(Matrix{T}(Xquery), preds)
end
