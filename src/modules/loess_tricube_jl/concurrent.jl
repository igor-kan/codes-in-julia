function parallel_loess_eval(X::AbstractMatrix{T}, y::AbstractVector{T}, Xq::AbstractMatrix{T}, cfg::LoessConfig{T}) where {T<:AbstractFloat}
    n = size(X, 1)
    k = clamp(ceil(Int, cfg.span * n), size(X, 2) + 2, n)
    m = size(Xq, 1)
    out = Vector{T}(undef, m)
    Threads.@threads for q in 1:m
        out[q] = _loess_eval_point(X, y, @view(Xq[q, :]), k, cfg.ridge_eps)
    end
    return out
end
