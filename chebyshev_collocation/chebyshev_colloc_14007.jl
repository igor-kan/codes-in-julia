module ChebyshevCollocStep14007
export compute_chebyshev_colloc_14007
function compute_chebyshev_colloc_14007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep14007,Test
@testset "ChebyshevCollocStep14007" begin
    @test isfinite(compute_chebyshev_colloc_14007(0.5))
end
