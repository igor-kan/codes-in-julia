module KellyCriterion
export kelly_fraction

function kelly_fraction(p::Float64, b::Float64)
    return (p * (b + 1.0) - 1.0) / b
end

end # module
