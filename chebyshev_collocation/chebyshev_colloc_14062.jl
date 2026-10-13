module ChebyshevCollocStep14062
export compute_chebyshev_colloc_14062
function compute_chebyshev_colloc_14062(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep14062,Test
@testset "ChebyshevCollocStep14062" begin
    @test isfinite(compute_chebyshev_colloc_14062(0.5))
end
