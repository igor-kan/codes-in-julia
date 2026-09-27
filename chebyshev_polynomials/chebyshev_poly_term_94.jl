module ChebyshevPolyTerm94

export compute_chebyshev_poly_term_94

function compute_chebyshev_poly_term_94(x::Float64)
    return (x ^ 94) / 94.0
end

end

using .ChebyshevPolyTerm94
using Test
@testset "ChebyshevPolyTerm94 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_94(1.0), 1.0 / 94.0, atol=1e-7)
end
