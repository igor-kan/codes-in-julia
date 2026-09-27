module ChebyshevPolyTerm14

export compute_chebyshev_poly_term_14

function compute_chebyshev_poly_term_14(x::Float64)
    return (x ^ 14) / 14.0
end

end

using .ChebyshevPolyTerm14
using Test
@testset "ChebyshevPolyTerm14 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_14(1.0), 1.0 / 14.0, atol=1e-7)
end
