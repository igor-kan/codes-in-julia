module ChebyshevPolyTerm54

export compute_chebyshev_poly_term_54

function compute_chebyshev_poly_term_54(x::Float64)
    return (x ^ 54) / 54.0
end

end

using .ChebyshevPolyTerm54
using Test
@testset "ChebyshevPolyTerm54 Tests" begin
    @test isapprox(compute_chebyshev_poly_term_54(1.0), 1.0 / 54.0, atol=1e-7)
end
