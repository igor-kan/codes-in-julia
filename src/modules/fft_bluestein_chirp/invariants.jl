function verify_parseval(x::Vector{Complex{T}}, X::Vector{Complex{T}}) where {T<:AbstractFloat}
    e_time = sum(abs2, x)
    e_freq = sum(abs2, X) / length(x)
    @assert isapprox(e_time, e_freq; rtol = 1e-10, atol = 1e-10)
    return true
end
