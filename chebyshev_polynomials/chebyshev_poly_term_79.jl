module ChebyshevPolyTerm79

export compute_chebyshev_poly_term_79

function compute_chebyshev_poly_term_79(x::Float64)
    return (x ^ 79) / 79.0
end

end

using .ChebyshevPolyTerm79
using Test
@testset "ChebyshevPolyTerm79 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_79(1.0), 1.0 / 79.0, atol=1e-7)
end
