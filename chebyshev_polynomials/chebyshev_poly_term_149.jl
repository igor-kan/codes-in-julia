module ChebyshevPolyTerm149

export compute_chebyshev_poly_term_149

function compute_chebyshev_poly_term_149(x::Float64)
    return (x ^ 149) / 149.0
end

end

using .ChebyshevPolyTerm149
using Test
@testset "ChebyshevPolyTerm149 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_149(1.0), 1.0 / 149.0, atol=1e-7)
end
