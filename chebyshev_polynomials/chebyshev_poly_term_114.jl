module ChebyshevPolyTerm114

export compute_chebyshev_poly_term_114

function compute_chebyshev_poly_term_114(x::Float64)
    return (x ^ 114) / 114.0
end

end

using .ChebyshevPolyTerm114
using Test
@testset "ChebyshevPolyTerm114 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_114(1.0), 1.0 / 114.0, atol=1e-7)
end
