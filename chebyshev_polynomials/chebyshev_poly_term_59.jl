module ChebyshevPolyTerm59

export compute_chebyshev_poly_term_59

function compute_chebyshev_poly_term_59(x::Float64)
    return (x ^ 59) / 59.0
end

end

using .ChebyshevPolyTerm59
using Test
@testset "ChebyshevPolyTerm59 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_59(1.0), 1.0 / 59.0, atol=1e-7)
end
