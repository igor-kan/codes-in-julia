function fast_dot_simd(a::Vector{T}, b::Vector{T}) where {T<:AbstractFloat}
    acc = zero(T)
    @inbounds @simd for i in eachindex(a, b)
        acc += a[i] * b[i]
    end
    return acc
end
