module ChebyshevCollocStep12002
export compute_chebyshev_colloc_12002
function compute_chebyshev_colloc_12002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep12002,Test
@testset "ChebyshevCollocStep12002" begin
    @test isfinite(compute_chebyshev_colloc_12002(0.5))
end
