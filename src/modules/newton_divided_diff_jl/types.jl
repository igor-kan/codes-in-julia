struct NewtonPoly
    nodes::Vector{Float64}
    coeffs::Vector{Float64}
end
poly_degree(p::NewtonPoly) = length(p.coeffs) - 1
