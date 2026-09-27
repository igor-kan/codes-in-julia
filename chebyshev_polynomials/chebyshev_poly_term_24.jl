module ChebyshevPolyTerm24

export compute_chebyshev_poly_term_24

function compute_chebyshev_poly_term_24(x::Float64)
    return (x ^ 24) / 24.0
end

end

using .ChebyshevPolyTerm24
using Test
@testset "ChebyshevPolyTerm24 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_24(1.0), 1.0 / 24.0, atol=1e-7)
end
