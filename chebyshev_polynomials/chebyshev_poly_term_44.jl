module ChebyshevPolyTerm44

export compute_chebyshev_poly_term_44

function compute_chebyshev_poly_term_44(x::Float64)
    return (x ^ 44) / 44.0
end

end

using .ChebyshevPolyTerm44
using Test
@testset "ChebyshevPolyTerm44 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_44(1.0), 1.0 / 44.0, atol=1e-7)
end
