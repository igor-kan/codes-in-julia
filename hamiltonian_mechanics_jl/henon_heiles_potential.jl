module HenonHeiles
export henon_heiles_term

function henon_heiles_term(x::Float64, y::Float64)
    return x^2 * y - (y^3) / 3.0
end

end # module
