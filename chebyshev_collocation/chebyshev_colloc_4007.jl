module ChebyshevCollocStep4007
export compute_chebyshev_colloc_4007
function compute_chebyshev_colloc_4007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep4007,Test
@testset "ChebyshevCollocStep4007" begin
    @test isfinite(compute_chebyshev_colloc_4007(0.5))
end
