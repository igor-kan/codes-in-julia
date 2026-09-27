module ChebyshevPolyTerm34

export compute_chebyshev_poly_term_34

function compute_chebyshev_poly_term_34(x::Float64)
    return (x ^ 34) / 34.0
end

end

using .ChebyshevPolyTerm34
using Test
@testset "ChebyshevPolyTerm34 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_34(1.0), 1.0 / 34.0, atol=1e-7)
end
