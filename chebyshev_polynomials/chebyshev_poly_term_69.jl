module ChebyshevPolyTerm69

export compute_chebyshev_poly_term_69

function compute_chebyshev_poly_term_69(x::Float64)
    return (x ^ 69) / 69.0
end

end

using .ChebyshevPolyTerm69
using Test
@testset "ChebyshevPolyTerm69 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_69(1.0), 1.0 / 69.0, atol=1e-7)
end
