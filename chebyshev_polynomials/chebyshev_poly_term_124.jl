module ChebyshevPolyTerm124

export compute_chebyshev_poly_term_124

function compute_chebyshev_poly_term_124(x::Float64)
    return (x ^ 124) / 124.0
end

end

using .ChebyshevPolyTerm124
using Test
@testset "ChebyshevPolyTerm124 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_124(1.0), 1.0 / 124.0, atol=1e-7)
end
