module DensityPurity
export purity_2x2

function purity_2x2(diag1::Float64, diag2::Float64)
    return diag1^2 + diag2^2
end

end # module
