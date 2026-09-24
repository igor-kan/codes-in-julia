module MilsteinSDE
export milstein_ito_term

function milstein_ito_term(b::Float64, bp::Float64, dt::Float64, dw::Float64)
    return 0.5 * b * bp * (dw^2 - dt)
end

end # module
