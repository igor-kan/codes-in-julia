module ChebyshevPolyTerm119

export compute_chebyshev_poly_term_119

function compute_chebyshev_poly_term_119(x::Float64)
    return (x ^ 119) / 119.0
end

end

using .ChebyshevPolyTerm119
using Test
@testset "ChebyshevPolyTerm119 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_119(1.0), 1.0 / 119.0, atol=1e-7)
end
