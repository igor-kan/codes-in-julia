module ChebyshevCollocStep9002
export compute_chebyshev_colloc_9002
function compute_chebyshev_colloc_9002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9002,Test
@testset "ChebyshevCollocStep9002" begin
    @test isfinite(compute_chebyshev_colloc_9002(0.5))
end
