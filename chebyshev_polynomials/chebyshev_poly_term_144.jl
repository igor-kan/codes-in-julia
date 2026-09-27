module ChebyshevPolyTerm144

export compute_chebyshev_poly_term_144

function compute_chebyshev_poly_term_144(x::Float64)
    return (x ^ 144) / 144.0
end

end

using .ChebyshevPolyTerm144
using Test
@testset "ChebyshevPolyTerm144 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_144(1.0), 1.0 / 144.0, atol=1e-7)
end
