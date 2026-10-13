module ChebyshevCollocStep14002
export compute_chebyshev_colloc_14002
function compute_chebyshev_colloc_14002(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep14002,Test
@testset "ChebyshevCollocStep14002" begin
    @test isfinite(compute_chebyshev_colloc_14002(0.5))
end
