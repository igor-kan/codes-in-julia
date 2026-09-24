module HermiteWeight
export hermite_weight

function hermite_weight(x::Float64)
    return exp(-x^2)
end

end # module
