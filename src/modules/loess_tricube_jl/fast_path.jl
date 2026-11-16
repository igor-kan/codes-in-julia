function loess_residuals(X::AbstractMatrix{T}, y::AbstractVector{T}, cfg::LoessConfig{T} = LoessConfig()) where {T<:AbstractFloat}
    res = fit_predict_loess(TricubeLoess(), X, y, X, cfg)
    resid = y .- res.fitted
    return resid
end

function loess_rmse(X::AbstractMatrix{T}, y::AbstractVector{T}, cfg::LoessConfig{T} = LoessConfig()) where {T<:AbstractFloat}
    r = loess_residuals(X, y, cfg)
    return sqrt(sum(abs2, r) / length(r))
end
