module ChebyshevPolyTerm84

export compute_chebyshev_poly_term_84

function compute_chebyshev_poly_term_84(x::Float64)
    return (x ^ 84) / 84.0
end

end

using .ChebyshevPolyTerm84
using Test
@testset "ChebyshevPolyTerm84 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_84(1.0), 1.0 / 84.0, atol=1e-7)
end
