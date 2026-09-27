module ChebyshevPolyTerm129

export compute_chebyshev_poly_term_129

function compute_chebyshev_poly_term_129(x::Float64)
    return (x ^ 129) / 129.0
end

end

using .ChebyshevPolyTerm129
using Test
@testset "ChebyshevPolyTerm129 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_129(1.0), 1.0 / 129.0, atol=1e-7)
end
