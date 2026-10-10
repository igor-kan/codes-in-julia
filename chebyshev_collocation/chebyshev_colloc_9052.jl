module ChebyshevCollocStep9052
export compute_chebyshev_colloc_9052
function compute_chebyshev_colloc_9052(x::Float64)::Float64
    return cos(pi*2.0/3.0)*x
end
end
using .ChebyshevCollocStep9052,Test
@testset "ChebyshevCollocStep9052" begin
    @test isfinite(compute_chebyshev_colloc_9052(0.5))
end
