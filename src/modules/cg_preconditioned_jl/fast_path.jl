function simd_dot(x::Vector{T}, y::Vector{T}) where {T<:AbstractFloat}
    s = zero(T)
    @inbounds @simd for i in eachindex(x, y)
        s += x[i] * y[i]
    end
    return s
end

function simd_axpy!(alpha::T, x::Vector{T}, y::Vector{T}) where {T<:AbstractFloat}
    @inbounds @simd for i in eachindex(x, y)
        y[i] += alpha * x[i]
    end
    return y
end
