module ChebyshevPolyTerm64

export compute_chebyshev_poly_term_64

function compute_chebyshev_poly_term_64(x::Float64)
    return (x ^ 64) / 64.0
end

end

using .ChebyshevPolyTerm64
using Test
@testset "ChebyshevPolyTerm64 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_64(1.0), 1.0 / 64.0, atol=1e-7)
end
