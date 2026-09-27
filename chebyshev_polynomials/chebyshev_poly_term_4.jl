module ChebyshevPolyTerm4

export compute_chebyshev_poly_term_4

function compute_chebyshev_poly_term_4(x::Float64)
    return (x ^ 4) / 4.0
end

end

using .ChebyshevPolyTerm4
using Test
@testset "ChebyshevPolyTerm4 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_4(1.0), 1.0 / 4.0, atol=1e-7)
end
