function validate_kalman_model(
    m::LinearStateSpaceModel{T},
    obs::AbstractMatrix{T},
    x0::AbstractVector{T},
    P0::AbstractMatrix{T},
) where {T<:AbstractFloat}
    dx = length(x0)
    dy = size(m.H, 1)
    size(m.F) == (dx, dx) || throw(KalmanDimensionError("F dimension mismatch"))
    size(m.Q) == (dx, dx) || throw(KalmanDimensionError("Q dimension mismatch"))
    size(m.H, 2) == dx || throw(KalmanDimensionError("H width mismatch"))
    size(m.R) == (dy, dy) || throw(KalmanDimensionError("R dimension mismatch"))
    size(P0) == (dx, dx) || throw(KalmanDimensionError("P0 dimension mismatch"))
    size(obs, 1) == dy || throw(KalmanDimensionError("observation height mismatch"))
    return true
end
