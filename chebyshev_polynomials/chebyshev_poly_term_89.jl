module ChebyshevPolyTerm89

export compute_chebyshev_poly_term_89

function compute_chebyshev_poly_term_89(x::Float64)
    return (x ^ 89) / 89.0
end

end

using .ChebyshevPolyTerm89
using Test
@testset "ChebyshevPolyTerm89 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_89(1.0), 1.0 / 89.0, atol=1e-7)
end
