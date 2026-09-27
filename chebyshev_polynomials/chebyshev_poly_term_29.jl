module ChebyshevPolyTerm29

export compute_chebyshev_poly_term_29

function compute_chebyshev_poly_term_29(x::Float64)
    return (x ^ 29) / 29.0
end

end

using .ChebyshevPolyTerm29
using Test
@testset "ChebyshevPolyTerm29 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_29(1.0), 1.0 / 29.0, atol=1e-7)
end
