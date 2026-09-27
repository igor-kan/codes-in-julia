module ChebyshevPolyTerm39

export compute_chebyshev_poly_term_39

function compute_chebyshev_poly_term_39(x::Float64)
    return (x ^ 39) / 39.0
end

end

using .ChebyshevPolyTerm39
using Test
@testset "ChebyshevPolyTerm39 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_39(1.0), 1.0 / 39.0, atol=1e-7)
end
