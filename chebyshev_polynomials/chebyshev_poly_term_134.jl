module ChebyshevPolyTerm134

export compute_chebyshev_poly_term_134

function compute_chebyshev_poly_term_134(x::Float64)
    return (x ^ 134) / 134.0
end

end

using .ChebyshevPolyTerm134
using Test
@testset "ChebyshevPolyTerm134 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_134(1.0), 1.0 / 134.0, atol=1e-7)
end
