module MorsePotential
export morse_v

function morse_v(r::Float64, re::Float64, de::Float64, a::Float64)
    return de * (1.0 - exp(-a * (r - re)))^2
end

end # module
