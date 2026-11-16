function validate_loess(X::AbstractMatrix{T}, y::AbstractVector{T}, cfg::LoessConfig{T}) where {T<:AbstractFloat}
    if size(X, 1) != length(y) || size(X, 1) < 4
        throw(LoessDimensionError("sample matrix and response length mismatch"))
    end
    if !(zero(T) < cfg.span <= one(T)) || !all(isfinite, X) || !all(isfinite, y)
        throw(LoessDomainError("invalid LOESS span or non-finite input"))
    end
    return true
end
