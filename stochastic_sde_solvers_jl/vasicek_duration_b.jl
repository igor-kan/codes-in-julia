module VasicekYield
export vasicek_b_tau

function vasicek_b_tau(a::Float64, tau::Float64)
    return (1.0 - exp(-a * tau)) / a
end

end # module
