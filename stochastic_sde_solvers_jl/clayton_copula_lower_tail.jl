module CopulaTail
export clayton_lambda_l

function clayton_lambda_l(theta::Float64)
    return 2.0^(-1.0 / theta)
end

end # module
