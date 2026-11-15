function steady_kalman_gain(P::Matrix{T}, H::Matrix{T}, R::Matrix{T}) where {T<:AbstractFloat}
    S = H * P * transpose(H) + R
    K = P * transpose(H) / S
    return K
end

function innovation_mahalanobis2(nu::Vector{T}, S::Matrix{T}) where {T<:AbstractFloat}
    return dot(nu, S \ nu)
end
