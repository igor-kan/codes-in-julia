function rosenbrock_val(x::AbstractVector{T}) where {T<:AbstractFloat}
    t1 = x[2] - x[1]^2
    t2 = one(T) - x[1]
    return T(100) * t1 * t1 + t2 * t2
end

function himmelblau_val(x::AbstractVector{T}) where {T<:AbstractFloat}
    return (x[1]^2 + x[2] - T(11))^2 + (x[1] + x[2]^2 - T(7))^2
end
