module LegendreNorm
export legendre_norm_sq

function legendre_norm_sq(n::Int)
    return 2.0 / (2*n + 1)
end

end # module
