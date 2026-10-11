module ChebyshevCollocStep10032
export compute_chebyshev_colloc_10032
function compute_chebyshev_colloc_10032(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep10032,Test
@testset "ChebyshevCollocStep10032" begin
    @test isfinite(compute_chebyshev_colloc_10032(0.5))
end
