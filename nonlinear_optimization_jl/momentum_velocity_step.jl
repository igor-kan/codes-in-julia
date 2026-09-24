module MomentumOpt
export momentum_step

function momentum_step(v::Float64, beta::Float64, lr::Float64, g::Float64)
    return beta * v + lr * g
end

end # module
