module ChebyshevCollocStep5007
export compute_chebyshev_colloc_5007
function compute_chebyshev_colloc_5007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep5007,Test
@testset "ChebyshevCollocStep5007" begin
    @test isfinite(compute_chebyshev_colloc_5007(0.5))
end
