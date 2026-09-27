module ChebyshevPolyTerm139

export compute_chebyshev_poly_term_139

function compute_chebyshev_poly_term_139(x::Float64)
    return (x ^ 139) / 139.0
end

end

using .ChebyshevPolyTerm139
using Test
@testset "ChebyshevPolyTerm139 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_139(1.0), 1.0 / 139.0, atol=1e-7)
end
