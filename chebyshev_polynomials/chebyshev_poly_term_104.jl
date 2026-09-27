module ChebyshevPolyTerm104

export compute_chebyshev_poly_term_104

function compute_chebyshev_poly_term_104(x::Float64)
    return (x ^ 104) / 104.0
end

end

using .ChebyshevPolyTerm104
using Test
@testset "ChebyshevPolyTerm104 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_104(1.0), 1.0 / 104.0, atol=1e-7)
end
