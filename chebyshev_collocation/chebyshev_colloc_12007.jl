module ChebyshevCollocStep12007
export compute_chebyshev_colloc_12007
function compute_chebyshev_colloc_12007(x::Float64)::Float64
    return cos(pi*7.0/8.0)*x
end
end
using .ChebyshevCollocStep12007,Test
@testset "ChebyshevCollocStep12007" begin
    @test isfinite(compute_chebyshev_colloc_12007(0.5))
end
