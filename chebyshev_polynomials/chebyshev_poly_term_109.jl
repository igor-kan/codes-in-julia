module ChebyshevPolyTerm109

export compute_chebyshev_poly_term_109

function compute_chebyshev_poly_term_109(x::Float64)
    return (x ^ 109) / 109.0
end

end

using .ChebyshevPolyTerm109
using Test
@testset "ChebyshevPolyTerm109 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_109(1.0), 1.0 / 109.0, atol=1e-7)
end
