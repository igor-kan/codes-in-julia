module ChebyshevPolyTerm9

export compute_chebyshev_poly_term_9

function compute_chebyshev_poly_term_9(x::Float64)
    return (x ^ 9) / 9.0
end

end

using .ChebyshevPolyTerm9
using Test
@testset "ChebyshevPolyTerm9 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_9(1.0), 1.0 / 9.0, atol=1e-7)
end
