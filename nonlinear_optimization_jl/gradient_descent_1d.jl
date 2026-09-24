module GradientDescent
export gd_step

function gd_step(x::Float64, lr::Float64, grad::Float64)
    return x - lr * grad
end

end # module
