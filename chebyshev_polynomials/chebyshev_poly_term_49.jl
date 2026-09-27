module ChebyshevPolyTerm49

export compute_chebyshev_poly_term_49

function compute_chebyshev_poly_term_49(x::Float64)
    return (x ^ 49) / 49.0
end

end

using .ChebyshevPolyTerm49
using Test
@testset "ChebyshevPolyTerm49 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_49(1.0), 1.0 / 49.0, atol=1e-7)
end
