module AdamSecond
export adam_v

function adam_v(v::Float64, beta2::Float64, g::Float64)
    return beta2 * v + (1.0 - beta2) * g^2
end

end # module
