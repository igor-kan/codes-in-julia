struct ToeplitzResult{T<:AbstractFloat}
    solution::Vector{T}
    reflection_coeffs::Vector{T}
    prediction_error::T
end
