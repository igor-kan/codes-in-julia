module ChebyshevPolyTerm74

export compute_chebyshev_poly_term_74

function compute_chebyshev_poly_term_74(x::Float64)
    return (x ^ 74) / 74.0
end

end

using .ChebyshevPolyTerm74
using Test
@testset "ChebyshevPolyTerm74 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_74(1.0), 1.0 / 74.0, atol=1e-7)
end
