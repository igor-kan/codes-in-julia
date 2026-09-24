module AdamOpt
export adam_m

function adam_m(m::Float64, beta1::Float64, g::Float64)
    return beta1 * m + (1.0 - beta1) * g
end

end # module
