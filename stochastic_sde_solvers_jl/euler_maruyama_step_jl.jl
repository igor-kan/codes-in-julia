module EulerMaruyama
export em_step

function em_step(x::Float64, a::Float64, b::Float64, dt::Float64, dw::Float64)
    return x + a * dt + b * dw
end

end # module
