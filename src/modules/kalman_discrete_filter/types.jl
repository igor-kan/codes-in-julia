struct LinearStateSpaceModel{T<:AbstractFloat}
    F::Matrix{T}
    H::Matrix{T}
    Q::Matrix{T}
    R::Matrix{T}
end

struct KalmanFilterOutput{T<:AbstractFloat}
    states::Matrix{T}
    last_cov::Matrix{T}
    log_likelihood::T
end
