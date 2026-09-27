module ChebyshevPolyTerm19

export compute_chebyshev_poly_term_19

function compute_chebyshev_poly_term_19(x::Float64)
    return (x ^ 19) / 19.0
end

end

using .ChebyshevPolyTerm19
using Test
@testset "ChebyshevPolyTerm19 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_19(1.0), 1.0 / 19.0, atol=1e-7)
end
