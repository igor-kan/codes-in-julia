module ChebyshevPolyTerm99

export compute_chebyshev_poly_term_99

function compute_chebyshev_poly_term_99(x::Float64)
    return (x ^ 99) / 99.0
end

end

using .ChebyshevPolyTerm99
using Test
@testset "ChebyshevPolyTerm99 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_99(1.0), 1.0 / 99.0, atol=1e-7)
end
